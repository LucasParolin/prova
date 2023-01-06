//
//  RecipeListCollectionView.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class RecipeListCollectionView: BaseCell {
    
    var recipe: Recipe? {
        didSet {
            lblRecipeName.text = recipe?.recipeName
            lblDescription.text = recipe?.description
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.layer.borderWidth = 2
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pensando")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        return imageView
    }()
    
    lazy var lblRecipeName: UILabel = {
        let label = UILabel()
        label.text = recipe?.recipeName
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var lblDescription: UILabel = {
        let label = UILabel()
        label.text = recipe?.description
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override func addSubviews() {
        addSubview(container)
        container.addSubview(imageView)
        container.addSubview(lblRecipeName)
        container.addSubview(lblDescription)
        addConstraints()
        
    }
    
    override func addConstraints() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10), size: .init(width: frame.width, height: 80))
        
        imageView.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 10, bottom: 0, right: 0), size: .init(width: 80, height: 80))
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true


        lblRecipeName.anchor(top: container.topAnchor, leading: imageView.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 18, left: 20, bottom: 0, right: 0), size: .init(width: 250, height: 20))
        
        lblDescription.anchor(top: lblRecipeName.bottomAnchor, leading: lblRecipeName.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 8, bottom: 10, right: 0), size: .init(width: 200, height: 20))
        
    }
}


