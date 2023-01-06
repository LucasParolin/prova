//
//  RecipeDetailsController.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class RecipeDetailsController: UIViewController {
    
    let recipeDetailsCustom = RecipeDetails()
    
    override func loadView() {
        view = recipeDetailsCustom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        recipeDetailsCustom.closeRecipeButton.addTarget(self, action: #selector(CloseRecipe), for: .touchUpInside)
    }
    
    @objc func CloseRecipe(){
        let RecipeListCustomcontroller = RecipeListController()
        present(RecipeListCustomcontroller, animated: true)
    }
}




