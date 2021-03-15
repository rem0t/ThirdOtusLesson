//
//  RecipesScreen.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 28.02.2021.
//

import SwiftUI
import Networking
struct HomeScreen: View {
    
    @State var showModal: Bool = false
    
    @EnvironmentObject var recipesViewModel: RecipesViewModel

    var body: some View {
        NavigationView {
            List {
                Section(header: buttonShowModal) {
                    ForEach(recipesViewModel.items) { recipe in
                        RecipeCell(item: recipe)
                            .onAppear() {
                                if recipesViewModel.items.isLast(recipe) {
                                    recipesViewModel.loadPage()
                                }
                            }
                    }
                }
            } // List
            .navigationTitle("Recipes")
            .onAppear() {
                recipesViewModel.loadPage()
            }
        }
    }
    
    var buttonShowModal: some View {
        Button(action: {
            showModal = true
        }) {
            Text("Recipes API Info")
        }.sheet(isPresented: $showModal) {
            VStack {
                Text("Recipe Puppy")
                Text("🐶")
                    .font(Font.system(size: 200))
            }
        }
    }
    
}

struct RecipeCell: View {
    
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    
    let item: Recipe
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title.asStringOrEmpty)
                .font(.headline)
                .foregroundColor(.primary)
            Text(item.ingredients.asStringOrEmpty)
                .font(.callout)
                .foregroundColor(.secondary)
            if recipesViewModel.isPageLoading && recipesViewModel.items.isLast(item) {
                Divider()
                VStack (alignment: .center) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
                .frame(maxWidth: .infinity)
            }
        } // VStack
    }
    
}

