//
//  CollectionViewController.swift
//  IOS11CollectionViewControllerTutorial
//
//  Created by Arthur Knopper on 18/10/2017.
//  Copyright © 2017 Arthur Knopper. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    var cellColor = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // 1
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 2
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
       
        
    
        // Configure the cell
        // 3
        
      //  cell.oddcellTitleLabel.frame = CGRect(x: 70, y: 110, width: 90, height: 50)
        
//        if let layout = collectionview2.collectionViewLayout as? UICollectionViewFlowLayout { layout.scrollDirection = .horizontal }
//        self.collectionview2.isPagingEnabled = true
//        self.collectionview2.alwaysBounceHorizontal = true
        
        print (collectionView.frame.size.width)
//
        let height = collectionView.frame.size.width/3
        let width = collectionView.frame.size.width/3
        
        cell.frame.size.width = width
        cell.frame.size.height = height
        
        print (height, width);
        
        print(collectionView.bounds.height)
       print(collectionView.bounds.width)

        
        //cell.frame.size.width = self.view.frame.width / 3
        //cell.frame.size.height = self.view.frame.height / 4
        cell.backgroundColor = cellColor ? UIColor.red : UIColor.blue
        cellColor = !cellColor
    
        return cell
    }
}
