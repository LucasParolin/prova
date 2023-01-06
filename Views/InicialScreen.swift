//
//  InicialScreen.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class InicialScreen: UIView {
    
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = .white
        return background
    }()
    
    lazy var registerRecipeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Cadastrar receita", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        return button
    }()

    lazy var viewRecipeListButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Ver lista de receitas", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        
        addSubview(background)
        addSubview(registerRecipeButton)
        addSubview(viewRecipeListButton)
        addConstraints()
    }
    
    func addConstraints() {
        
        background.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor)
        
        registerRecipeButton.anchor(top: background.topAnchor, leading: background.leadingAnchor, bottom: nil, trailing: background.trailingAnchor, padding: .init(top: 350, left: 60, bottom: 0, right: 60), size: .init(width: 60, height: 60))
        registerRecipeButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        viewRecipeListButton.anchor(top: registerRecipeButton.topAnchor, leading: registerRecipeButton.leadingAnchor, bottom: nil, trailing: registerRecipeButton.trailingAnchor, padding: .init(top: 100, left: 0, bottom: 0, right: 0), size: .init(width: 60, height: 60))
        
        
    }
        
}


