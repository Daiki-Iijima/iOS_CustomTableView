//
//  CollectionViewCell.swift
//  CustomTableView
//
//  Created by 飯島大樹 on 2021/02/14.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var iconImage: UIImageView!
    
    @IBAction func OnClickOKBtn(_ sender: Any) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
