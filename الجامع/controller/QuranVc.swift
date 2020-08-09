//
//  QuranVc.swift
//  الجامع
//
//  Created by Mohamed on 8/9/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class QuranVc: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{

    
    var arrayquran:[soura] = []
    @IBOutlet weak var collectionquran: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quranloder.shared.quranCollector().count
    }

    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let qcell  = collectionquran.dequeueReusableCell(withReuseIdentifier: "QuranCell", for: indexPath) as! QuranCell
        qcell.namelbl.text = quranloder.shared.quranCollector()[indexPath.item].content
        
        qcell.souranumberlbl.text = String(quranloder.shared.quranCollector()[indexPath.item].surahNumber)
        
        return qcell
}
}
