//
//  RecipeDetails.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class RecipeDetails: UIView {
    
    var recipe: Recipe? {
        didSet {
            lblRecipeName.text = recipe?.recipeName
            lblIngredients.text = recipe?.ingredients
            lblMethodOfPreparation.text = recipe?.methodOfPreparation
        }
    }
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = .white
        return background
    }()
    
    lazy var lblRecipeName: UILabel = {
        let label = UILabel()
        label.text = recipe?.recipeName
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        return label
    }()

    lazy var lblIngredients: UILabel = {
        let label = UILabel()
        label.text = recipe?.ingredients
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        return label
    }()

    lazy var lblMethodOfPreparation: UILabel = {
        let label = UILabel()
        label.text = recipe?.methodOfPreparation
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 5
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        return label
    }()
    
    lazy var closeRecipeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Fechar receita", for: .normal)
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
        addSubview(lblRecipeName)
        addSubview(lblIngredients)
        addSubview(lblMethodOfPreparation)
        addSubview(closeRecipeButton)
        addConstraints()
    }
    
    func addConstraints() {
        
        background.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor)
        
        lblRecipeName.anchor(top: background.topAnchor, leading: background.leadingAnchor, bottom: nil, trailing: background.trailingAnchor, padding: .init(top: 350, left: 60, bottom: 0, right: 60), size: .init(width: 60, height: 60))
        lblRecipeName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        lblIngredients.anchor(top: lblRecipeName.topAnchor, leading: lblRecipeName.leadingAnchor, bottom: nil, trailing: lblRecipeName.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 60, height: 60))
        lblIngredients.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        lblMethodOfPreparation.anchor(top: lblIngredients.topAnchor, leading: lblIngredients.leadingAnchor, bottom: nil, trailing: lblIngredients.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 60, height: 60))
        lblMethodOfPreparation.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        closeRecipeButton.anchor(top: lblMethodOfPreparation.topAnchor, leading: lblMethodOfPreparation.leadingAnchor, bottom: nil, trailing: lblMethodOfPreparation.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 60, height: 60))
        closeRecipeButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
