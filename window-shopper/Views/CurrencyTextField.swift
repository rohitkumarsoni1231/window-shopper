//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by MacBook on 27/10/2021.
//

import UIKit

//@IBDesignable

class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 15, y: (frame.size.height / 2) - size /                                                    2, width: size, height: size ))
        currencyLabel.backgroundColor = .white
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = .black
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView()
    {
        backgroundColor = .darkGray
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                        attributes: [.foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
            textColor = .white
        }
    }
}
