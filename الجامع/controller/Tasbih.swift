//
//  Tasbih.swift
//  الجامع
//
//  Created by Mohamed on 7/28/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class Tasbih: UIViewController {
    
    var count = 0
    @IBOutlet weak var lblcount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    

    @IBAction func Tasbihbtn(_ sender: UIButton) {
        
        count = count + 1
        lblcount.text = "\(count)"
        
    }
    
}
