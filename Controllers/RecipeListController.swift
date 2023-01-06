//
//  RecipeListController.swift
//  Provinha
//
//  Created by Lucas Parolin on 06/01/23.
//

import UIKit

class RecipeListController: UIViewController {
    
    var collectionView: UICollectionView?

    
    private let cellId = "cellId"
    var recipe: [Recipe] = []
    var repositoyMock = RecipeRepositoryMock()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        populateList()
    }
    
    
    func getData(data: Recipe) {

        
        recipe = [data]
    }
    
    func populateList() {
        repositoyMock.populateRecipe { recipe in
            self.recipe = recipe
        }
        
        setCollectionView()
    }
    
    func setCollectionView() {
        
        lazy var layout: UICollectionViewFlowLayout = {
            let layout = UICollectionViewFlowLayout()
            layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
            layout.itemSize = CGSize(width: 60, height: 60)
            return layout
        }()
        
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView?.delegate = self
        collectionView?.dataSource = self
        collectionView?.register(RecipeListCollectionView.self, forCellWithReuseIdentifier: cellId)
        collectionView?.backgroundColor = .white
        
        view.addSubview(collectionView ?? UICollectionView())
        
    }
}

extension RecipeListController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return recipe.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! RecipeListCollectionView
        
        cell.recipe = recipe[indexPath.item]
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
