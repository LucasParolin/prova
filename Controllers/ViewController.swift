//
//  ViewController.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    let inicialScreenView = InicialScreen()
    
    override func loadView() {
        view = inicialScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        inicialScreenView.viewRecipeListButton.addTarget(self, action: #selector(GoToRecipeListView), for: .touchUpInside)
        inicialScreenView.registerRecipeButton.addTarget(self, action: #selector(GoToRegisterRecipeView), for: .touchUpInside)
    }
    
    @objc func GoToRegisterRecipeView(){
        let registerRecipeCustom = RegisterRecipeController()
        self.navigationController?.pushViewController(registerRecipeCustom, animated: true)
    }
    
    @objc func GoToRecipeListView() {
        
        let recipeListCustom = RecipeListController()
        self.navigationController?.pushViewController(recipeListCustom, animated: true)
    }
}


