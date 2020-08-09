//
//  QuranCell.swift
//  الجامع
//
//  Created by Mohamed on 8/9/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class QuranCell: UICollectionViewCell {
    @IBOutlet weak var backGround: UIView!
    
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var souranumberlbl: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backGround.layer.cornerRadius = 15
        backGround.layer.masksToBounds = true
    }
}
