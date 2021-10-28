//
//  Wage.swift
//  window-shopper
//
//  Created by MacBook on 27/10/2021.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double , andPrice price:Double) -> Int {
        
        return Int(ceil(price/wage))
    }
}
