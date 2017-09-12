//
//  Wage.swift
//  WindowShopper
//
//  Created by Jose Melendez on 9/12/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(for wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price/wage))
        
        
    }
}
