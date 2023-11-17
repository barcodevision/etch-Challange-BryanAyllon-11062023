//
//  ContentView.swift
//  Fetch-Challange-BryanAyllon-11062023
//
//  Created by bryan on 11/16/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @ObservedObject var loadDecodedDesserts = MealAPIService()
    @State private var searchableMealsSearchBar = ""
    
    var filteredMeals: [Meal] {
        if searchableMealsSearchBar.isEmpty {
            return loadDecodedDesserts.fetchedMeals
        } else {
            return loadDecodedDesserts.fetchedMeals.filter { $0.strMeal?.lowercased().contains(searchableMealsSearchBar.lowercased()) == true }
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredMeals.sorted(by: { $0.strMeal! < $1.strMeal! }), id: \.self) { item in
                NavigationLink(destination: RecipeDetailView(dessertDetails: item)) {
                    HStack {
                        AsyncImage(url: URL(string: item.strMealThumb ?? "")) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 95, height: 80)
                                .clipped()
                                .cornerRadius(10)
                        } placeholder: {
                            Image("placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 95, height: 80)
                                .clipped()
                                .cornerRadius(10)
                        }
                        Text(item.strMeal ?? "Dessert")
                    }
                }
            }
            .searchable(text: $searchableMealsSearchBar, prompt: "Search Desserts")
            .navigationTitle("My Desserts")
        }
    }
}



#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
