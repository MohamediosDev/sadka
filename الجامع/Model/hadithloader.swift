//
//  hadithloader.swift
//  الجامع
//
//  Created by Mohamed on 8/6/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
class hadithloader{
    

static let shared:hadithloader = hadithloader()
 private init() {loadhadith()}
 
 var Datahadtih = [FakedHadith]()
func loadhadith() {
     
     
     guard let path = Bundle.main.path(forResource: "fakehadith", ofType: "json") else {return}
         
     let url = URL(fileURLWithPath: path)
         
     do {
         
         let data = try Data(contentsOf: url)
         let pars = try JSONDecoder().decode([FakedHadith].self, from: data)
         self.Datahadtih = pars
     }
     catch {
         print("Error")
     }
         }
 func hadithCollector() -> [FakedHadith] {
     self.Datahadtih
 }
            
}
