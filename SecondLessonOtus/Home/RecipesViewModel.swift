//
//  RecipesViewModel.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 28.02.2021.
//

import Foundation
import Core
import Networking

extension Recipe: Identifiable {
    public var id: String {
        href
    }
}

final class RecipesViewModel: ObservableObject {
    
    @Published private var recipesNetWorkService: RecipeApiServiceProtocol?

    @Published private(set) var items: [Recipe] = [Recipe]()
    @Published private(set) var page: Int = 0
    @Published private(set) var isPageLoading: Bool = false
    
    init() {
        self.recipesNetWorkService = ServiceLocator.shared.getService(type: RecipeApiServiceProtocol.self)
    }
    
    func loadPage() {
        guard isPageLoading == false else {
            return
        }
        isPageLoading = true
        page += 1
        self.recipesNetWorkService?.getRecipe(i: "cheese,tomato,garlic", p: page) { response, error in
            if let results = response?.results {
                self.items.append(contentsOf: results)
            }
            self.isPageLoading = false
        }
    }
}
