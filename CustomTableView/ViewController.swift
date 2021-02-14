//
//  ViewController.swift
//  CustomTableView
//
//  Created by 飯島大樹 on 2021/02/13.
//

import UIKit

class ViewController: UIViewController{

    let array = ["1","2","3"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        collectionViewFlowLayout.estimatedItemSize = CGSize(width: 340, height: 100)
        
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "cell")
    }


}
extension ViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        return cell
    }
    
    
}

