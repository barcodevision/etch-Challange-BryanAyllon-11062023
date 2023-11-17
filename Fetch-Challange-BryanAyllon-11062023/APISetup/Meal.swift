//
//  Meal.swift
//  Fetch-Challange-BryanAyllon-11062023
//
//  Created by bryan on 11/16/23.
//

import Foundation

struct Meal: Codable,Hashable {
    let idMeal: String?
    let strMeal: String?
    let strDrinkAlternate: String?
    let strCategory: String?
    let strArea: String?
    let strInstructions: String?
    let strMealThumb: String?
    let strTags: String?
    let strYoutube: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    let strImageSource: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?
    
    // Add more properties as needed
    
    enum CodingKeys: String, CodingKey {
        case idMeal
        case strMeal
        case strDrinkAlternate
        case strCategory
        case strArea
        case strInstructions
        case strMealThumb
        case strTags
        case strYoutube
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case strIngredient16
        case strIngredient17
        case strIngredient18
        case strIngredient19
        case strIngredient20
        case strMeasure1
        case strMeasure2
        case strMeasure3
        case strMeasure4
        case strMeasure5
        case strMeasure6
        case strMeasure7
        case strMeasure8
        case strMeasure9
        case strMeasure10
        case strMeasure11
        case strMeasure12
        case strMeasure13
        case strMeasure14
        case strMeasure15
        case strMeasure16
        case strMeasure17
        case strMeasure18
        case strMeasure19
        case strMeasure20
        case strSource
        case strImageSource
        case strCreativeCommonsConfirmed
        case dateModified
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do {
            idMeal = try container.decode(String?.self, forKey: .idMeal)
        } catch DecodingError.keyNotFound {
            idMeal = ""
        }
        
        do {
            strMeal = try container.decode(String?.self, forKey: .strMeal)
        } catch DecodingError.keyNotFound {
            strMeal = ""
        }
        
        do {
            strDrinkAlternate = try container.decode(String?.self, forKey: .strDrinkAlternate)
        } catch DecodingError.keyNotFound {
            strDrinkAlternate = ""
        }
        
        do {
            strCategory = try container.decode(String?.self, forKey: .strCategory)
        } catch DecodingError.keyNotFound {
            strCategory = ""
        }
        
        do {
            strArea = try container.decode(String?.self, forKey: .strArea)
        } catch DecodingError.keyNotFound {
            strArea = ""
        }
        
        do {
            strInstructions = try container.decode(String?.self, forKey: .strInstructions)
        } catch DecodingError.keyNotFound {
            strInstructions = ""
        }
        
        do {
            strMealThumb = try container.decode(String?.self, forKey: .strMealThumb)
        } catch DecodingError.keyNotFound {
            strMealThumb = ""
        }
        
        do {
            strTags = try container.decode(String?.self, forKey: .strTags)
        } catch DecodingError.keyNotFound {
            strTags = ""
        }
        
        do {
            strYoutube = try container.decode(String?.self, forKey: .strYoutube)
        } catch DecodingError.keyNotFound {
            strYoutube = ""
        }
        
        do {
            strIngredient1 = try container.decode(String?.self, forKey: .strIngredient1)
        } catch DecodingError.keyNotFound {
            strIngredient1 = ""
        }
        
        do {
            strIngredient2 = try container.decode(String?.self, forKey: .strIngredient2)
        } catch DecodingError.keyNotFound {
            strIngredient2 = ""
        }
        
        do {
            strIngredient3 = try container.decode(String?.self, forKey: .strIngredient3)
        } catch DecodingError.keyNotFound {
            strIngredient3 = ""
        }
        
        do {
            strIngredient4 = try container.decode(String?.self, forKey: .strIngredient4)
        } catch DecodingError.keyNotFound {
            strIngredient4 = ""
        }
        
        do {
            strIngredient5 = try container.decode(String?.self, forKey: .strIngredient5)
        } catch DecodingError.keyNotFound {
            strIngredient5 = ""
        }
        
        do {
            strIngredient6 = try container.decode(String?.self, forKey: .strIngredient6)
        } catch DecodingError.keyNotFound {
            strIngredient6 = ""
        }
        
        do {
            strIngredient7 = try container.decode(String?.self, forKey: .strIngredient7)
        } catch DecodingError.keyNotFound {
            strIngredient7 = ""
        }
        
        do {
            strIngredient8 = try container.decode(String?.self, forKey: .strIngredient8)
        } catch DecodingError.keyNotFound {
            strIngredient8 = ""
        }
        
        do {
            strIngredient9 = try container.decode(String?.self, forKey: .strIngredient9)
        } catch DecodingError.keyNotFound {
            strIngredient9 = ""
        }
        
        do {
            strIngredient10 = try container.decode(String?.self, forKey: .strIngredient10)
        } catch DecodingError.keyNotFound {
            strIngredient10 = ""
        }
        
        do {
            strIngredient11 = try container.decode(String?.self, forKey: .strIngredient11)
        } catch DecodingError.keyNotFound {
            strIngredient11 = ""
        }
        
        do {
            strIngredient12 = try container.decode(String?.self, forKey: .strIngredient12)
        } catch DecodingError.keyNotFound {
            strIngredient12 = ""
        }
        
        do {
            strIngredient13 = try container.decode(String?.self, forKey: .strIngredient13)
        } catch DecodingError.keyNotFound {
            strIngredient13 = ""
        }
        
        do {
            strIngredient14 = try container.decode(String?.self, forKey: .strIngredient14)
        } catch DecodingError.keyNotFound {
            strIngredient14 = ""
        }
        
        do {
            strIngredient15 = try container.decode(String?.self, forKey: .strIngredient15)
        } catch DecodingError.keyNotFound {
            strIngredient15 = ""
        }
        
        do {
            strIngredient16 = try container.decode(String?.self, forKey: .strIngredient16)
        } catch DecodingError.keyNotFound {
            strIngredient16 = ""
        }
        
        do {
            strIngredient17 = try container.decode(String?.self, forKey: .strIngredient17)
        } catch DecodingError.keyNotFound {
            strIngredient17 = ""
        }
        
        do {
            strIngredient18 = try container.decode(String?.self, forKey: .strIngredient18)
        } catch DecodingError.keyNotFound {
            strIngredient18 = ""
        }
        
        do {
            strIngredient19 = try container.decode(String?.self, forKey: .strIngredient19)
        } catch DecodingError.keyNotFound {
            strIngredient19 = ""
        }
        
        do {
            strIngredient20 = try container.decode(String?.self, forKey: .strIngredient20)
        } catch DecodingError.keyNotFound {
            strIngredient20 = ""
        }
        
        do {
            strMeasure1 = try container.decode(String?.self, forKey: .strMeasure1)
        } catch DecodingError.keyNotFound {
            strMeasure1 = ""
        }
        
        do {
            strMeasure2 = try container.decode(String?.self, forKey: .strMeasure2)
        } catch DecodingError.keyNotFound {
            strMeasure2 = ""
        }
        
        do {
            strMeasure3 = try container.decode(String?.self, forKey: .strMeasure3)
        } catch DecodingError.keyNotFound {
            strMeasure3 = ""
        }
        
        do {
            strMeasure4 = try container.decode(String?.self, forKey: .strMeasure4)
        } catch DecodingError.keyNotFound {
            strMeasure4 = ""
        }
        
        do {
            strMeasure5 = try container.decode(String?.self, forKey: .strMeasure5)
        } catch DecodingError.keyNotFound {
            strMeasure5 = ""
        }
        
        do {
            strMeasure6 = try container.decode(String?.self, forKey: .strMeasure6)
        } catch DecodingError.keyNotFound {
            strMeasure6 = ""
        }
        
        do {
            strMeasure7 = try container.decode(String?.self, forKey: .strMeasure7)
        } catch DecodingError.keyNotFound {
            strMeasure7 = ""
        }
        
        do {
            strMeasure8 = try container.decode(String?.self, forKey: .strMeasure8)
        } catch DecodingError.keyNotFound {
            strMeasure8 = ""
        }
        
        do {
            strMeasure9 = try container.decode(String?.self, forKey: .strMeasure9)
        } catch DecodingError.keyNotFound {
            strMeasure9 = ""
        }
        
        do {
            strMeasure10 = try container.decode(String?.self, forKey: .strMeasure10)
        } catch DecodingError.keyNotFound {
            strMeasure10 = ""
        }
        
        do {
            strMeasure11 = try container.decode(String?.self, forKey: .strMeasure11)
        } catch DecodingError.keyNotFound {
            strMeasure11 = ""
        }
        
        do {
            strMeasure12 = try container.decode(String?.self, forKey: .strMeasure12)
        } catch DecodingError.keyNotFound {
            strMeasure12 = ""
        }
        
        do {
            strMeasure13 = try container.decode(String?.self, forKey: .strMeasure13)
        } catch DecodingError.keyNotFound {
            strMeasure13 = ""
        }
        
        do {
            strMeasure14 = try container.decode(String?.self, forKey: .strMeasure14)
        } catch DecodingError.keyNotFound {
            strMeasure14 = ""
        }
        
        do {
            strMeasure15 = try container.decode(String?.self, forKey: .strMeasure15)
        } catch DecodingError.keyNotFound {
            strMeasure15 = ""
        }
        
        do {
            strMeasure16 = try container.decode(String?.self, forKey: .strMeasure16)
        } catch DecodingError.keyNotFound {
            strMeasure16 = ""
        }
        
        do {
            strMeasure17 = try container.decode(String?.self, forKey: .strMeasure17)
        } catch DecodingError.keyNotFound {
            strMeasure17 = ""
        }
        
        do {
            strMeasure18 = try container.decode(String?.self, forKey: .strMeasure18)
        } catch DecodingError.keyNotFound {
            strMeasure18 = ""
        }
        
        do {
            strMeasure19 = try container.decode(String?.self, forKey: .strMeasure19)
        } catch DecodingError.keyNotFound {
            strMeasure19 = ""
        }
        
        do {
            strMeasure20 = try container.decode(String?.self, forKey: .strMeasure20)
        } catch DecodingError.keyNotFound {
            strMeasure20 = ""
        }
        
        do {
            strSource = try container.decode(String?.self, forKey: .strSource)
        } catch DecodingError.keyNotFound {
            strSource = ""
        }
        
        do {
            strImageSource = try container.decode(String?.self, forKey: .strImageSource)
        } catch DecodingError.keyNotFound {
            strImageSource = ""
        }
        
        do {
            strCreativeCommonsConfirmed = try container.decode(String?.self, forKey: .strCreativeCommonsConfirmed)
        } catch DecodingError.keyNotFound {
            strCreativeCommonsConfirmed = ""
        }
        
        do {
            dateModified = try container.decode(String?.self, forKey: .dateModified)
        } catch DecodingError.keyNotFound {
            dateModified = ""
        }
    }
    func measure(forIndex index: Int) -> String? {
        let mirror = Mirror(reflecting: self)
        let measureProperty = mirror.children.first { $0.label == "strMeasure\(index + 1)" }
        return measureProperty?.value as? String
    }
    
    // Assuming you have properties like strIngredient1, strIngredient2, ..., strIngredient20
    func ingredient(forIndex index: Int) -> String? {
        let mirror = Mirror(reflecting: self)
        let ingredientProperty = mirror.children.first { $0.label == "strIngredient\(index + 1)" }
        return ingredientProperty?.value as? String
    }
    
    // Assuming you have a fixed number of ingredients, you can adjust this accordingly
    var ingredientsCount: Int {
        return 20
    }
}

