//
//  HomeViewController.swift
//  EpitechEisenhower
//
//  Created by fauquette fred on 29/11/17.
//  Copyright © 2017 Epitech. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    var monTitre: String?
    var content = [TaskModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = monTitre
        content.append(TaskModel(titre: "Fred"))
        content.append(TaskModel(titre: "Simon"))
        content.append(TaskModel(titre: "Alex"))
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return content.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell!
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellReuseId", for: indexPath)
        let customCell = cell as? CustomCell
        let tmpModel = content[indexPath.row]
        customCell?.myTitle.text = tmpModel.titre
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
}
