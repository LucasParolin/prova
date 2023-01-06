//
//  RegisterRecipeController.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class RegisterRecipeController: UIViewController {
    
    var recipes: Recipe?
    let registerRecipeCustomView = RegisterRecipeView()
    
    override func loadView() {
        view = registerRecipeCustomView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerRecipeCustomView.registerRecipesButton.addTarget(self, action: #selector(RegisterRecipe), for: .touchUpInside)
    }
    
//    func getData(data: Recipe) {
//        registerRecipeCustomView.txtFieldRecipeTitle.text = data.recipeName
//        registerRecipeCustomView.txtFieldDescription.text = data.description
//        registerRecipeCustomView.txtFieldRecipeIngredients.text = data.ingredients
//        registerRecipeCustomView.txtFieldMethodOfPreparation.text = data.methodOfPreparation
//
//        self.recipes = Recipe(recipeName: data.recipeName, description: data.description, ingredients: data.ingredients, methodOfPreparation: data.methodOfPreparation)
//
//    }
    
    @objc func RegisterRecipe(){
        
        let teste = Recipe(recipeName: registerRecipeCustomView.txtFieldRecipeTitle.text!, description: registerRecipeCustomView.txtFieldDescription.text!, ingredients: registerRecipeCustomView.txtFieldRecipeIngredients.text!, methodOfPreparation: registerRecipeCustomView.txtFieldMethodOfPreparation.text!)

        let content = """
        
        \(registerRecipeCustomView.txtFieldRecipeTitle.text ?? "")
        \(registerRecipeCustomView.txtFieldDescription.text ?? "")
        \(registerRecipeCustomView.txtFieldRecipeIngredients.text ?? "")
        \(registerRecipeCustomView.txtFieldMethodOfPreparation.text ?? "")
        
        """
        
//        RecipeListController.getData(data: teste)

        
        let ViewControllerCustom = ViewController()
        self.navigationController?.pushViewController(ViewControllerCustom, animated: true)
    
    }
}
