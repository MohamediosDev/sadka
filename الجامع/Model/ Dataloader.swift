//
//   Dataloader.swift
//  الجامع
//
//  Created by Mohamed on 7/28/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import UIKit
class Dataloader {
    static let shared:Dataloader = Dataloader()
    private init() {load()}
    
    var DataAzkar = [Azkar]()
   func load() {
        
        
        guard let path = Bundle.main.path(forResource: "azkar", ofType: "json") else {return}
            
        let url = URL(fileURLWithPath: path)
            
        do {
            
            let data = try Data(contentsOf: url)
            let pars = try JSONDecoder().decode([Azkar].self, from: data)
            self.DataAzkar = pars
        }
        catch {
            print("Error")
        }
            }
    func AzkarCollector() -> [Azkar] {
        self.DataAzkar
    }
                
                
            }
            
            
    
