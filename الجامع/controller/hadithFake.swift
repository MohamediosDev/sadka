//
//  hadithFake.swift
//  الجامع
//
//  Created by Mohamed on 8/6/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class hadithFake: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

    @IBOutlet weak var hadithcollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hadithloader.shared.hadithCollector().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cells = hadithcollection.dequeueReusableCell(withReuseIdentifier: "hatithfackecell", for: indexPath) as! hatithfackecell
        cells.textllbl.text  = hadithloader.shared.hadithCollector()[indexPath.item].text
        cells.Dargalbl.text  = hadithloader.shared.hadithCollector()[indexPath.item].darga
        cells.sourcelbl.text  = hadithloader.shared.hadithCollector()[indexPath.item].source
        return cells
    }
 
}
