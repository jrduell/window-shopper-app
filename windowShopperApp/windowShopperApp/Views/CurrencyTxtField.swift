//
//  CurrencyTxtField.swift
//  windowShopperApp
//
//  Created by jacob on 4/18/19.
//  Copyright © 2019 jacob. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
        //prepareForInterfaceBuilder calls customizeView and allows programmatic changes made to show in the main storyboard
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        customizeView()
        //implements customize view to run on app and apply to the UITextField
    }
//customizeView() must be called in both awakeFromNib and prepareForInterfaceBuilder
   
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //set placeholder to string instead of nil, then convert to NSAttributedString to edit .foregroundColor of placeholder
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place //attributedPlaceHolder will override placeholder
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}


