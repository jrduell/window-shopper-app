//
//  Wage.swift
//  windowShopperApp
//
//  Created by jacob on 4/28/19.
//  Copyright © 2019 jacob. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //return Int(round(price / wage) does not work because it rounds down under .5 which fails unit testing
        return Int(ceil(price / wage))
    }
}
