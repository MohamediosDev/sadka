//
//  passData.swift
//  الجامع
//
//  Created by Mohamed on 8/6/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class passData: UICollectionViewCell {
    
    @IBOutlet weak var textlbl: UILabel!
    @IBOutlet weak var Backvieww: UIView!
    @IBOutlet weak var Countlbll: UILabel!
    @IBOutlet weak var soulbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Backvieww.layer.cornerRadius = 15
        Backvieww.layer.masksToBounds = true
    }
}
