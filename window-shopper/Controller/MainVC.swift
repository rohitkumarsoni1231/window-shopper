//
//  ViewController.swift
//  window-shopper
//
//  Created by MacBook on 27/10/2021.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calButton.backgroundColor = .orange
        calButton.setTitle("Calculate", for: .normal)
        calButton.setTitleColor(.white, for: .normal)
        calButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calButton
        priceTxt.inputAccessoryView = calButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }
    
    @objc func calculate() {
        
        if let wageTxt =  wageTxt.text, let priceTxt = priceTxt.text {
            
            if let wage = Double(wageTxt) , let price = Double(priceTxt) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}
