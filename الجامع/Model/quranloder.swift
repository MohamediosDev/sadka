//
//  quranloder.swift
//  الجامع
//
//  Created by Mohamed on 8/9/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
class quranloder{
    

static let shared:quranloder = quranloder()
 private init() {quranlode()}
 
 var Dataquran = [soura]()
func quranlode() {
     
     
     guard let path = Bundle.main.path(forResource: "qk", ofType: "json") else {return}
         
     let url = URL(fileURLWithPath: path)
         
     do {
         
         let data = try Data(contentsOf: url)
         let pars = try JSONDecoder().decode([soura].self, from: data)
         self.Dataquran = pars
     }
     catch {
         print("Error")
     }
         }
 func quranCollector() -> [soura] {
     self.Dataquran
 }
            
}

