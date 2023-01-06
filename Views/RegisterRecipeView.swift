//
//  RegisterRecipeView.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class RegisterRecipeView: UIView {
    
    lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = .white
        return background
    }()

    
    lazy var txtFieldRecipeTitle: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "     Insira o nome da receita"
        txtField.layer.borderWidth = 2
        return txtField
    }()
    
    lazy var txtFieldDescription: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "     Insira uma breve descrição da receita"
        txtField.layer.borderWidth = 2
        return txtField
    }()
    
    lazy var txtFieldRecipeIngredients: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "     Acrescente os ingredientes da receita"
        txtField.layer.borderWidth = 2
        return txtField
    }()
    
    lazy var txtFieldMethodOfPreparation: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "     Insira o modo de preparo"
        txtField.layer.borderWidth = 2
        return txtField
    }()
    
    lazy var registerRecipesButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Finalizar cadatro", for: .normal)
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
        addSubview(txtFieldRecipeTitle)
        addSubview(txtFieldDescription)
        addSubview(txtFieldRecipeIngredients)
        addSubview(txtFieldMethodOfPreparation)
        addSubview(registerRecipesButton)
        addConstraints()
    }
    
    func addConstraints() {
        
        background.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor)
        
        txtFieldRecipeTitle.anchor(top: background.topAnchor, leading: background.leadingAnchor, bottom: nil, trailing: background.trailingAnchor, padding: .init(top: 100, left: 30, bottom: 0, right: 30), size: .init(width: 45, height: 45))
        txtFieldRecipeTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        txtFieldDescription.anchor(top: txtFieldRecipeTitle.bottomAnchor, leading: txtFieldRecipeTitle.leadingAnchor, bottom: nil, trailing: txtFieldRecipeTitle.trailingAnchor, padding: .init(top: 15, left: 0, bottom: 0, right: 0), size: .init(width: 45, height: 90))
        txtFieldRecipeTitle.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        txtFieldRecipeIngredients.anchor(top: txtFieldDescription.bottomAnchor, leading: txtFieldDescription.leadingAnchor, bottom: nil, trailing: txtFieldDescription.trailingAnchor, padding: .init(top: 15, left: 0, bottom: 0, right: 0), size: .init(width: 45, height: 230))
        txtFieldRecipeIngredients.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        txtFieldMethodOfPreparation.anchor(top: txtFieldRecipeIngredients.bottomAnchor, leading: txtFieldRecipeIngredients.leadingAnchor, bottom: nil, trailing: txtFieldRecipeIngredients.trailingAnchor, padding: .init(top: 15, left: 0, bottom: 0, right: 0), size: .init(width: 45, height: 230))
        txtFieldMethodOfPreparation.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
       
        registerRecipesButton.anchor(top: txtFieldMethodOfPreparation.bottomAnchor, leading: txtFieldMethodOfPreparation.leadingAnchor, bottom: nil, trailing: txtFieldMethodOfPreparation.trailingAnchor, padding: .init(top: 30, left: 30, bottom: 0, right: 30), size: .init(width: 45, height: 45))
        registerRecipesButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
