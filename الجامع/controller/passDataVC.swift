//
//  passDataVC.swift
//  الجامع
//
//  Created by Mohamed on 8/6/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class passDataVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var index:Int?
    @IBOutlet weak var passDataview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Dataloader.shared.AzkarCollector()[index ?? 0].content.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celll = passDataview.dequeueReusableCell(withReuseIdentifier: "passData", for: indexPath) as! passData
        celll.textlbl.text = Dataloader.shared.AzkarCollector()[index ?? 0].content[indexPath.item].text
        celll.Countlbll.text = Dataloader.shared.AzkarCollector()[index ?? 0].content[indexPath.item].count
         celll.soulbl.text = Dataloader.shared.AzkarCollector()[index ?? 0].content[indexPath.item].source
        
        
        return celll
    }
    

   
}
