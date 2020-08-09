//
//  ViewController.swift
//  الجامع
//
//  Created by Mohamed on 7/28/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
   

    @IBOutlet weak var Collectionvieww: UICollectionView!
    
    let images = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6")]
    let Texts = ["Quran","Tasbih","Azkar","Not True","Talp","About us"]
    var StortID = ["A","B","C","D","E","F"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "shows", bundle: nil)
        self.Collectionvieww.register(nib, forCellWithReuseIdentifier: "shows")
        
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shows", for: indexPath) as! shows
        cell.imageshow.image = images[indexPath.item]
        cell.lbltxt.text  = Texts[indexPath.item]
        
        return cell
       }
       
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: collectionView.frame.width / 3, height: collectionView.frame.height / 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let name = StortID[indexPath.row]
        let vc = storyboard?.instantiateViewController(identifier: name)
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

