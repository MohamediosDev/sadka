//
//  AzkarVc.swift
//  الجامع
//
//  Created by Mohamed on 8/5/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class AzkarVc: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    
    var ArrayAzkar:[Content] = []
    
    @IBOutlet weak var Azkarview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Dataloader.shared.AzkarCollector().count
        
           }
           
           func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell2 = Azkarview.dequeueReusableCell(withReuseIdentifier: "AzkarCell", for: indexPath) as! AzkarCell
            cell2.intro.text = Dataloader.shared.AzkarCollector()[indexPath.item].title
            cell2.counter.text = Dataloader.shared.AzkarCollector()[indexPath.item].count
            return cell2
           }
           
       
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc  = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "passDataVC") as! passDataVC
        
        vc.index = indexPath.item
     
        navigationController?.pushViewController(vc, animated: true)
    }
        
    }


