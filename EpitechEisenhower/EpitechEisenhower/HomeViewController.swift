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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = monTitre
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: UICollectionViewCell!
        if indexPath.row == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "autreCell", for: indexPath)
        } else {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellReuseId", for: indexPath)
            let customCell = cell as? CustomCell
            customCell?.myTitle.text = "fred"
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
}
