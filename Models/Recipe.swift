//
//  Recipe.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class Recipe {
    
    var recipeName = String()
    var description = String()
    var ingredients = String()
    var methodOfPreparation = String()

    
    init(recipeName: String, description: String, ingredients:String, methodOfPreparation: String) {
        self.recipeName = recipeName
        self.description = description
        self.ingredients = ingredients
        self.methodOfPreparation = methodOfPreparation
    }
}
