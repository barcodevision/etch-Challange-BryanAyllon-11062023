//
//  RecipeDetailView.swift
//  Fetch-Challange-BryanAyllon-11062023
//
//  Created by bryan on 11/17/23.
//

import SwiftUI

struct RecipeDetailView: View {
    @ObservedObject var loadDecodedDessertsDetails = MealAPIService()
    var dessertDetails: Meal!
    
    var body: some View {
        List {
            
            Section {
                AsyncImage(url: URL(string: dessertDetails.strMealThumb ?? ""))
                { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 256)
                        .edgesIgnoringSafeArea(.all)
                    
                    
                } placeholder: {
                    Image("placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 256)
                        .edgesIgnoringSafeArea(.all)
                }
            }
            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Section(header: Text("Ingredients").textCase(nil).font(.system(size: 17)).foregroundColor(Color(UIColor.label))) {
                ForEach(1...20, id: \.self) { index in
                    if let measure = dessertDetails.measure(forIndex: index), !measure.isEmpty,
                       let ingredient = dessertDetails.ingredient(forIndex: index), !ingredient.isEmpty {
                        HStack {
                            Text(measure)
                                .foregroundStyle(Color.blue)
                            Text(ingredient)
                        }
                    }
                }
            }
            Section(header: Text("Instructions").textCase(nil).font(.system(size: 17)).foregroundColor(Color(UIColor.label))) {
                Text(dessertDetails.strInstructions ?? "Not Available")
            }
        }
        .navigationTitle(dessertDetails.strMeal ?? "Dessert Name")
    }
}
#Preview {
    RecipeDetailView()
}
