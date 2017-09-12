//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Jose Melendez on 9/12/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        
        customize()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customize()
 
}

func customize() {
    
    backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
    
    layer.cornerRadius = 5.0
    
    textAlignment = .center
    
    if placeholder == nil {
        
        placeholder = " "
        
    }
    
    let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
    
    attributedPlaceholder = place
    
    textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
}
