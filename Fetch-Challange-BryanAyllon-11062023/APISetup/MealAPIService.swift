import Foundation

class MealAPIService: ObservableObject {
    @Published var fetchedMeals: [Meal] = []
    
    init() {
        fetchData()
    }
    
    // Inside MealAPIService class
    func fetchData() {
        let dispatchGroup = DispatchGroup()
        
        // API call 1
        dispatchGroup.enter()
        let filterURL = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
        URLSession.shared.dataTask(with: filterURL) { data, _, error in
            defer { dispatchGroup.leave() }
            
            if let error = error {
                print("Error fetching filter data: \(error)")
                return
            }
            
            guard let data = data else {
                print("No filter data received")
                return
            }
            
            // Attempt to decode using JSONDecoder
            do {
                let decodedData = try JSONDecoder().decode([String: [Meal]].self, from: data)
                if let meals = decodedData["meals"] {
                    self.fetchedMeals = meals
                    for meal in meals {
                        dispatchGroup.enter()
                        self.fetchMealData(meal.idMeal ?? "") { additionalMeal in
                            defer { dispatchGroup.leave() }
                            if let additionalMeal = additionalMeal {
                                // Update the existing meal in fetchedMeals with additional details
                                if let index = self.fetchedMeals.firstIndex(where: { $0.idMeal == additionalMeal.idMeal }) {
                                    self.fetchedMeals[index] = additionalMeal
                                }
                            }
                        }
                    }
                } else {
                    print("No meals found.")
                }
            } catch {
                print("Error decoding filter data with JSONDecoder: \(error)")
                
                // Attempt to parse using JSONSerialization
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: data, options: [])
                    if let validJSON = jsonObject as? [String: Any] {
                        // Continue with your decoding logic using JSONSerialization
                        print("Parsed JSON with JSONSerialization: \(validJSON)")
                        // Handle the structure and data accordingly
                    } else {
                        print("Invalid JSON Format")
                    }
                } catch {
                    print("Error parsing data with JSONSerialization: \(error)")
                }
            }
        }.resume()
        
        // Wait for both API calls to complete
        dispatchGroup.notify(queue: .main) {
            // Perform any additional processing or UI updates here
        }
    }
    
    func fetchMealData(_ mealID: String, completion: @escaping (Meal?) -> Void) {
        let lookupURL = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(mealID)")!
        URLSession.shared.dataTask(with: lookupURL) { data, _, error in
            if let error = error {
                print("Error fetching lookup data: \(error)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No lookup data received")
                completion(nil)
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode([String: [Meal]].self, from: data)
                
                // Assuming the structure is { "meals": [ { meal object } ] }
                if let meals = decodedData["meals"]?.first {
                    print("Instructions: \(meals.strInstructions)")
                    completion(meals)
                } else {
                    print("No lookup data found.")
                    completion(nil)
                }
            } catch {
                print("Error decoding lookup data: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
