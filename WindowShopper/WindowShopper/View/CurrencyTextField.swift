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
    
    override func draw(_ rect: CGRect) {
        
        //Never call 'super' on this function
        
        //Never call this function if it is empty
        
        let size: CGFloat = 20
        
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size / 2, width: size, height: size))
        
        currencyLabel.backgroundColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 0.5)
        
        currencyLabel.textAlignment = .center
        
        currencyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6024721747)
        
        currencyLabel.layer.cornerRadius = 5.0
        
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        
        formatter.numberStyle = .currency
        
        //'locale' changes the currency symbol based on the location of the user
        formatter.locale = .current
        
        currencyLabel.text = formatter.currencySymbol
        
        addSubview(currencyLabel)
        
    }
    
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
    
    clipsToBounds = true
    
    textAlignment = .center
    
    if placeholder == nil {
        
        placeholder = " "
        
    }
    
    let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
    
    attributedPlaceholder = place
    
    textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
}
