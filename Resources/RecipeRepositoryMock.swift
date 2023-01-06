//
//  RecipeRepositoryMock.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import Foundation

class RecipeRepositoryMock {
    func populateRecipe(completion: @escaping ([Recipe]) -> ())  {
            completion([
                Recipe(recipeName: "Teste nome da receita", description: "Teste descrição da receita", ingredients: "teste", methodOfPreparation: "teste")
            ])
    }
}
