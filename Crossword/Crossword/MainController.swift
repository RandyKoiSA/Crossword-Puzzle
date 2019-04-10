//
//  MainController.swift
//  Crossword
//
//  Created by Randy Le on 4/7/19.
//  Copyright © 2019 Project Koisa. All rights reserved.
//

import UIKit

class MainController : UIViewController, UITextFieldDelegate{
    var buttonStore : ButtonStore!
    var levelStore : LevelStore!
    
    @IBOutlet var A1 : CustomButton!
    @IBOutlet var A2 : CustomButton!
    @IBOutlet var A3 : CustomButton!
    @IBOutlet var A4 : CustomButton!
    @IBOutlet var A5 : CustomButton!
    @IBOutlet var A6 : CustomButton!
    @IBOutlet var A7 : CustomButton!
    @IBOutlet var A8 : CustomButton!
    @IBOutlet var A9 : CustomButton!
    @IBOutlet var A10 : CustomButton!
    @IBOutlet var A11 : CustomButton!
    @IBOutlet var A12 : CustomButton!
    @IBOutlet var A13 : CustomButton!
    @IBOutlet var B1 : CustomButton!
    @IBOutlet var B2 : CustomButton!
    @IBOutlet var B3 : CustomButton!
    @IBOutlet var B4 : CustomButton!
    @IBOutlet var B5 : CustomButton!
    @IBOutlet var B6 : CustomButton!
    @IBOutlet var B7 : CustomButton!
    @IBOutlet var B8 : CustomButton!
    @IBOutlet var B9 : CustomButton!
    @IBOutlet var B10 : CustomButton!
    @IBOutlet var B11 : CustomButton!
    @IBOutlet var B12 : CustomButton!
    @IBOutlet var B13 : CustomButton!
    @IBOutlet var C1 : CustomButton!
    @IBOutlet var C2 : CustomButton!
    @IBOutlet var C3 : CustomButton!
    @IBOutlet var C4 : CustomButton!
    @IBOutlet var C5 : CustomButton!
    @IBOutlet var C6 : CustomButton!
    @IBOutlet var C7 : CustomButton!
    @IBOutlet var C8 : CustomButton!
    @IBOutlet var C9 : CustomButton!
    @IBOutlet var C10 : CustomButton!
    @IBOutlet var C11 : CustomButton!
    @IBOutlet var C12 : CustomButton!
    @IBOutlet var C13 : CustomButton!
    @IBOutlet var D1 : CustomButton!
    @IBOutlet var D2 : CustomButton!
    @IBOutlet var D3 : CustomButton!
    @IBOutlet var D4 : CustomButton!
    @IBOutlet var D5 : CustomButton!
    @IBOutlet var D6 : CustomButton!
    @IBOutlet var D7 : CustomButton!
    @IBOutlet var D8 : CustomButton!
    @IBOutlet var D9 : CustomButton!
    @IBOutlet var D10 : CustomButton!
    @IBOutlet var D11 : CustomButton!
    @IBOutlet var D12 : CustomButton!
    @IBOutlet var D13 : CustomButton!
    @IBOutlet var E1 : CustomButton!
    @IBOutlet var E2 : CustomButton!
    @IBOutlet var E3 : CustomButton!
    @IBOutlet var E4 : CustomButton!
    @IBOutlet var E5 : CustomButton!
    @IBOutlet var E6 : CustomButton!
    @IBOutlet var E7 : CustomButton!
    @IBOutlet var E8 : CustomButton!
    @IBOutlet var E9 : CustomButton!
    @IBOutlet var E10 : CustomButton!
    @IBOutlet var E11 : CustomButton!
    @IBOutlet var E12 : CustomButton!
    @IBOutlet var E13 : CustomButton!
    @IBOutlet var F1 : CustomButton!
    @IBOutlet var F2 : CustomButton!
    @IBOutlet var F3 : CustomButton!
    @IBOutlet var F4 : CustomButton!
    @IBOutlet var F5 : CustomButton!
    @IBOutlet var F6 : CustomButton!
    @IBOutlet var F7 : CustomButton!
    @IBOutlet var F8 : CustomButton!
    @IBOutlet var F9 : CustomButton!
    @IBOutlet var F10 : CustomButton!
    @IBOutlet var F11 : CustomButton!
    @IBOutlet var F12 : CustomButton!
    @IBOutlet var F13 : CustomButton!
    @IBOutlet var G1 : CustomButton!
    @IBOutlet var G2 : CustomButton!
    @IBOutlet var G3 : CustomButton!
    @IBOutlet var G4 : CustomButton!
    @IBOutlet var G5 : CustomButton!
    @IBOutlet var G6 : CustomButton!
    @IBOutlet var G7 : CustomButton!
    @IBOutlet var G8 : CustomButton!
    @IBOutlet var G9 : CustomButton!
    @IBOutlet var G10 : CustomButton!
    @IBOutlet var G11 : CustomButton!
    @IBOutlet var G12 : CustomButton!
    @IBOutlet var G13 : CustomButton!
    @IBOutlet var H1 : CustomButton!
    @IBOutlet var H2 : CustomButton!
    @IBOutlet var H3 : CustomButton!
    @IBOutlet var H4 : CustomButton!
    @IBOutlet var H5 : CustomButton!
    @IBOutlet var H6 : CustomButton!
    @IBOutlet var H7 : CustomButton!
    @IBOutlet var H8 : CustomButton!
    @IBOutlet var H9 : CustomButton!
    @IBOutlet var H10 : CustomButton!
    @IBOutlet var H11 : CustomButton!
    @IBOutlet var H12 : CustomButton!
    @IBOutlet var H13 : CustomButton!
    @IBOutlet var I1 : CustomButton!
    @IBOutlet var I2 : CustomButton!
    @IBOutlet var I3 : CustomButton!
    @IBOutlet var I4 : CustomButton!
    @IBOutlet var I5 : CustomButton!
    @IBOutlet var I6 : CustomButton!
    @IBOutlet var I7 : CustomButton!
    @IBOutlet var I8 : CustomButton!
    @IBOutlet var I9 : CustomButton!
    @IBOutlet var I10 : CustomButton!
    @IBOutlet var I11 : CustomButton!
    @IBOutlet var I12 : CustomButton!
    @IBOutlet var I13 : CustomButton!
    @IBOutlet var J1 : CustomButton!
    @IBOutlet var J2 : CustomButton!
    @IBOutlet var J3 : CustomButton!
    @IBOutlet var J4 : CustomButton!
    @IBOutlet var J5 : CustomButton!
    @IBOutlet var J6 : CustomButton!
    @IBOutlet var J7 : CustomButton!
    @IBOutlet var J8 : CustomButton!
    @IBOutlet var J9 : CustomButton!
    @IBOutlet var J10 : CustomButton!
    @IBOutlet var J11 : CustomButton!
    @IBOutlet var J12 : CustomButton!
    @IBOutlet var J13 : CustomButton!
    @IBOutlet var K1 : CustomButton!
    @IBOutlet var K2 : CustomButton!
    @IBOutlet var K3 : CustomButton!
    @IBOutlet var K4 : CustomButton!
    @IBOutlet var K5 : CustomButton!
    @IBOutlet var K6 : CustomButton!
    @IBOutlet var K7 : CustomButton!
    @IBOutlet var K8 : CustomButton!
    @IBOutlet var K9 : CustomButton!
    @IBOutlet var K10 : CustomButton!
    @IBOutlet var K11 : CustomButton!
    @IBOutlet var K12 : CustomButton!
    @IBOutlet var K13 : CustomButton!
    @IBOutlet var L1 : CustomButton!
    @IBOutlet var L2 : CustomButton!
    @IBOutlet var L3 : CustomButton!
    @IBOutlet var L4 : CustomButton!
    @IBOutlet var L5 : CustomButton!
    @IBOutlet var L6 : CustomButton!
    @IBOutlet var L7 : CustomButton!
    @IBOutlet var L8 : CustomButton!
    @IBOutlet var L9 : CustomButton!
    @IBOutlet var L10 : CustomButton!
    @IBOutlet var L11 : CustomButton!
    @IBOutlet var L12 : CustomButton!
    @IBOutlet var L13 : CustomButton!
    @IBOutlet var M1 : CustomButton!
    @IBOutlet var M2 : CustomButton!
    @IBOutlet var M3 : CustomButton!
    @IBOutlet var M4 : CustomButton!
    @IBOutlet var M5 : CustomButton!
    @IBOutlet var M6 : CustomButton!
    @IBOutlet var M7 : CustomButton!
    @IBOutlet var M8 : CustomButton!
    @IBOutlet var M9 : CustomButton!
    @IBOutlet var M10 : CustomButton!
    @IBOutlet var M11 : CustomButton!
    @IBOutlet var M12 : CustomButton!
    @IBOutlet var M13 : CustomButton!
    
    
    @IBOutlet var horizontalButton: UIButton!
    @IBOutlet var verticalButton: UIButton!
    var isHorizontal : Bool = true
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Put all outlet custom buttons to  buttonStore
        addAllButtons()
        // Set all buttons to one action
        loadButtonAction()
        // Set all textfield to MainController textfield delegate
        setupTextFieldDelegate()
        // Set all textfield to have textchanged
        setupTextFieldDidChange()
        // clear the 'O's off the grid
        buttonStore.clearTitleText()
        
        // keyboard sync
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        //testing
        buttonStore.loadLevel(levelStore.levelOneString())
        buttonStore.loadCornerNumber(levelStore.numberPosition)
    }
    
    
    @IBAction func horizontalPressed(_ sender: Any) {
        isHorizontal = true
    }
    @IBAction func verticalPressed(_ sender: Any) {
        isHorizontal = false
    }
    
    // Add all buttons to have buttonIsPress action
    // THIS FUNCTION IS NOT USED
    func loadButtonAction(){
        for i in 0..<buttonStore.getLength(){
            let button = buttonStore.getButton(atIndex: i)
            button.addTarget(self, action: #selector(buttonIsPress(sender:)), for: .touchUpInside)
        }
    }
    
    // setup textField in buttons to delegate to this class
    func setupTextFieldDelegate(){
        for i in 0..<buttonStore.getLength(){
            let button : CustomButton = buttonStore.getButton(atIndex: i)
            button.textField?.delegate = self
        }
    }
    
    // Give all textField to have textFieldDidChanged action
    func setupTextFieldDidChange(){
        for button in buttonStore.allButtons{
            button.textField.addTarget(self, action: #selector(textFieldDidChanged(_:)), for: .editingChanged)
        }
    }
    
    @IBAction func buttonIsPress(sender: CustomButton){
        //print("THIS IS WORKING!")
        //let button : CustomButton = sender
        //let identifier : String = sender.accessibilityIdentifier ?? ""
        // Clear all backgroundbox back to white unless the background is black
        //buttonStore.removeHighlights()
        // Highlight the button pressed and its column and row
        //buttonStore.highlightRowColumn(identifier: identifier)
        
    }
    
    // MARK: Textfield Delegates
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if let button = textField.superview as? CustomButton{
            let identifier : String = button.accessibilityIdentifier ?? ""
            buttonStore.removeHighlights()
            buttonStore.highlightRowColumn(identifier: identifier, isHorizontal)
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @objc func textFieldDidChanged(_ textField: UITextField){
        // checks if the box is filled before erasing previous letter
        if textField.text?.count ?? 0 > 1 {
            textField.text?.removeFirst()
        }
        
        // switch to next textfield (if any)
        if let button = textField.superview as? CustomButton {
            let identifier : String = button.accessibilityIdentifier ?? ""
            
            let nextButton = buttonStore.getNextButton(identifier: identifier, isHorizontal: isHorizontal)
            
            // check if the buttons are the same, if so it has reached the a corner or wall
            if button.accessibilityIdentifier == nextButton.accessibilityIdentifier || nextButton.backgroundColor == UIColor.black{
                button.textField.resignFirstResponder()
            }
            else {
                nextButton.textField.becomeFirstResponder()
            }
        }
        
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    
    // MARK: Tap Gesture Action
    @IBAction func backgroundTapped(_ sender: Any){
        view.endEditing(true)
    }
    
    // Add all the reference button to the store to make it easier to manage
    func addAllButtons(){
        buttonStore.addButton(A1)
        buttonStore.addButton(A2)
        buttonStore.addButton(A3)
        buttonStore.addButton(A4)
        buttonStore.addButton(A5)
        buttonStore.addButton(A6)
        buttonStore.addButton(A7)
        buttonStore.addButton(A8)
        buttonStore.addButton(A9)
        buttonStore.addButton(A10)
        buttonStore.addButton(A11)
        buttonStore.addButton(A12)
        buttonStore.addButton(A13)
        buttonStore.addButton(B1)
        buttonStore.addButton(B2)
        buttonStore.addButton(B3)
        buttonStore.addButton(B4)
        buttonStore.addButton(B5)
        buttonStore.addButton(B6)
        buttonStore.addButton(B7)
        buttonStore.addButton(B8)
        buttonStore.addButton(B9)
        buttonStore.addButton(B10)
        buttonStore.addButton(B11)
        buttonStore.addButton(B12)
        buttonStore.addButton(B13)
        buttonStore.addButton(C1)
        buttonStore.addButton(C2)
        buttonStore.addButton(C3)
        buttonStore.addButton(C4)
        buttonStore.addButton(C5)
        buttonStore.addButton(C6)
        buttonStore.addButton(C7)
        buttonStore.addButton(C8)
        buttonStore.addButton(C9)
        buttonStore.addButton(C10)
        buttonStore.addButton(C11)
        buttonStore.addButton(C12)
        buttonStore.addButton(C13)
        buttonStore.addButton(D1)
        buttonStore.addButton(D2)
        buttonStore.addButton(D3)
        buttonStore.addButton(D4)
        buttonStore.addButton(D5)
        buttonStore.addButton(D6)
        buttonStore.addButton(D7)
        buttonStore.addButton(D8)
        buttonStore.addButton(D9)
        buttonStore.addButton(D10)
        buttonStore.addButton(D11)
        buttonStore.addButton(D12)
        buttonStore.addButton(D13)
        buttonStore.addButton(E1)
        buttonStore.addButton(E2)
        buttonStore.addButton(E3)
        buttonStore.addButton(E4)
        buttonStore.addButton(E5)
        buttonStore.addButton(E6)
        buttonStore.addButton(E7)
        buttonStore.addButton(E8)
        buttonStore.addButton(E9)
        buttonStore.addButton(E10)
        buttonStore.addButton(E11)
        buttonStore.addButton(E12)
        buttonStore.addButton(E13)
        buttonStore.addButton(F1)
        buttonStore.addButton(F2)
        buttonStore.addButton(F3)
        buttonStore.addButton(F4)
        buttonStore.addButton(F5)
        buttonStore.addButton(F6)
        buttonStore.addButton(F7)
        buttonStore.addButton(F8)
        buttonStore.addButton(F9)
        buttonStore.addButton(F10)
        buttonStore.addButton(F11)
        buttonStore.addButton(F12)
        buttonStore.addButton(F13)
        buttonStore.addButton(G1)
        buttonStore.addButton(G2)
        buttonStore.addButton(G3)
        buttonStore.addButton(G4)
        buttonStore.addButton(G5)
        buttonStore.addButton(G6)
        buttonStore.addButton(G7)
        buttonStore.addButton(G8)
        buttonStore.addButton(G9)
        buttonStore.addButton(G10)
        buttonStore.addButton(G11)
        buttonStore.addButton(G12)
        buttonStore.addButton(G13)
        buttonStore.addButton(H1)
        buttonStore.addButton(H2)
        buttonStore.addButton(H3)
        buttonStore.addButton(H4)
        buttonStore.addButton(H5)
        buttonStore.addButton(H6)
        buttonStore.addButton(H7)
        buttonStore.addButton(H8)
        buttonStore.addButton(H9)
        buttonStore.addButton(H10)
        buttonStore.addButton(H11)
        buttonStore.addButton(H12)
        buttonStore.addButton(H13)
        buttonStore.addButton(I1)
        buttonStore.addButton(I2)
        buttonStore.addButton(I3)
        buttonStore.addButton(I4)
        buttonStore.addButton(I5)
        buttonStore.addButton(I6)
        buttonStore.addButton(I7)
        buttonStore.addButton(I8)
        buttonStore.addButton(I9)
        buttonStore.addButton(I10)
        buttonStore.addButton(I11)
        buttonStore.addButton(I12)
        buttonStore.addButton(I13)
        buttonStore.addButton(J1)
        buttonStore.addButton(J2)
        buttonStore.addButton(J3)
        buttonStore.addButton(J4)
        buttonStore.addButton(J5)
        buttonStore.addButton(J6)
        buttonStore.addButton(J7)
        buttonStore.addButton(J8)
        buttonStore.addButton(J9)
        buttonStore.addButton(J10)
        buttonStore.addButton(J11)
        buttonStore.addButton(J12)
        buttonStore.addButton(J13)
        buttonStore.addButton(K1)
        buttonStore.addButton(K2)
        buttonStore.addButton(K3)
        buttonStore.addButton(K4)
        buttonStore.addButton(K5)
        buttonStore.addButton(K6)
        buttonStore.addButton(K7)
        buttonStore.addButton(K8)
        buttonStore.addButton(K9)
        buttonStore.addButton(K10)
        buttonStore.addButton(K11)
        buttonStore.addButton(K12)
        buttonStore.addButton(K13)
        buttonStore.addButton(L1)
        buttonStore.addButton(L2)
        buttonStore.addButton(L3)
        buttonStore.addButton(L4)
        buttonStore.addButton(L5)
        buttonStore.addButton(L6)
        buttonStore.addButton(L7)
        buttonStore.addButton(L8)
        buttonStore.addButton(L9)
        buttonStore.addButton(L10)
        buttonStore.addButton(L11)
        buttonStore.addButton(L12)
        buttonStore.addButton(L13)
        buttonStore.addButton(M1)
        buttonStore.addButton(M2)
        buttonStore.addButton(M3)
        buttonStore.addButton(M4)
        buttonStore.addButton(M5)
        buttonStore.addButton(M6)
        buttonStore.addButton(M7)
        buttonStore.addButton(M8)
        buttonStore.addButton(M9)
        buttonStore.addButton(M10)
        buttonStore.addButton(M11)
        buttonStore.addButton(M12)
        buttonStore.addButton(M13)
    }
}
