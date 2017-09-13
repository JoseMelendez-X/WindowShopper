//
//  ViewController.swift
//  WindowShopper
//
//  Created by Jose Melendez on 9/12/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var itemPriceTxt: CurrencyTextField!
    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create calculate button
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        
        itemPriceTxt.inputAccessoryView = calcBtn
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    @objc func calculate(){
        
        if let wageTxt = wageTxt.text, let itemPriceTxt = itemPriceTxt.text {
            
            if let wage = Double(wageTxt), let price = Double(itemPriceTxt) {
                
                //Dismiss the keyboard
                view.endEditing(true)
                
                //Show the data
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                
                //The data that will be shown
                resultLabel.text = "\(Wage.getHours(for: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearButtonTapped(_ sender: Any) {
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = ""
        itemPriceTxt.text = ""
    }
    

}

