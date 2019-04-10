//
//  CustomButton.swift
//  Crossword
//
//  Created by Randy Le on 4/7/19.
//  Copyright © 2019 Project Koisa. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    var number: Int = 0
    var style: wordStyle = .none
    var textField: UITextField!
    var cornerLabel: UILabel!
        
    // this init will intialize the button through programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textField = UITextField(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.center = .zero
        textField.textAlignment = .center
        textField.text = ""
        
        
        cornerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        cornerLabel.translatesAutoresizingMaskIntoConstraints = false
        cornerLabel.center = .zero
        cornerLabel.font = UIFont(name: cornerLabel.font.fontName, size: 9)
        cornerLabel.textAlignment = .right
        if self.number != 0 {
            cornerLabel.text = "\(self.number)"
        } else {
            cornerLabel.text = ""
        }
    }
    
    // this init will initialize when a custom button is made in the storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        textField = UITextField(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.center = .zero
        textField.textAlignment = .center
        textField.text = ""
        textField.autocapitalizationType = .allCharacters
        textField.keyboardAppearance = .dark
        textField.smartDashesType = .no
        textField.smartQuotesType = .no
        textField.smartInsertDeleteType = .no
        textField.keyboardType = .alphabet
        
        cornerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        cornerLabel.translatesAutoresizingMaskIntoConstraints = false
        cornerLabel.center = .zero
        cornerLabel.font = UIFont(name: cornerLabel.font.fontName, size: 9)
        cornerLabel.textAlignment = .right
        if self.number != 0 {
            cornerLabel.text = "\(self.number)"
        } else {
            cornerLabel.text = ""
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet { layer.borderColor = borderColor.cgColor }
    }
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet { layer.borderWidth = borderWidth }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet { layer.cornerRadius = cornerRadius }
    }
}
