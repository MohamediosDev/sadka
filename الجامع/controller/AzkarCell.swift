//
//  AzkarCell.swift
//  الجامع
//
//  Created by Mohamed on 8/5/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class AzkarCell: UICollectionViewCell {
    @IBOutlet weak var intro: UILabel!
    
    @IBOutlet weak var backview: UIView!
    @IBOutlet weak var counter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backview.layer.cornerRadius = 15
        backview.layer.masksToBounds = true
        
    }
}
