//
//  ButtonStore.swift
//  Crossword
//
//  Created by Randy Le on 4/7/19.
//  Copyright © 2019 Project Koisa. All rights reserved.
//

import UIKit

class ButtonStore {
    var allButtons : [CustomButton] = [CustomButton]()
    let letterToNum : [letterNumber: Int] = [letterNumber.A: 0, letterNumber.B: 1, letterNumber.C: 2, letterNumber.D: 3, letterNumber.E: 4, letterNumber.F: 5, letterNumber.G: 6, letterNumber.H: 7, letterNumber.I: 8, letterNumber.J: 9, letterNumber.K: 10, letterNumber.L: 11, letterNumber.M: 12, letterNumber.none: 0]
    
    init(){
    }
    
    @discardableResult func getLength() -> Int{
        return allButtons.count
    }
    
    func addButton(_ myButton: CustomButton){
        // add textfield into button
        myButton.addSubview(myButton.textField)
        myButton.textField.leadingAnchor.constraint(equalTo: myButton.leadingAnchor).isActive = true
        myButton.textField.trailingAnchor.constraint(equalTo: myButton.trailingAnchor).isActive = true
        myButton.textField.topAnchor.constraint(equalTo: myButton.topAnchor).isActive = true
        myButton.textField.bottomAnchor.constraint(equalTo: myButton.bottomAnchor).isActive = true
                
        // add corner number into button
        myButton.addSubview(myButton.cornerLabel)
        
        // set constraint to label
        myButton.cornerLabel.leadingAnchor.constraint(equalTo: myButton.leadingAnchor).isActive = true
        myButton.cornerLabel.topAnchor.constraint(equalTo: myButton.topAnchor).isActive = true
        
        // add button to the list
        allButtons.append(myButton)
        
    }
    
    
    func convertLetter(_ char: Character) -> letterNumber{
        let charToEnum : [Character: letterNumber] = ["A": letterNumber.A, "B": letterNumber.B, "C": letterNumber.C, "D": letterNumber.D, "E": letterNumber.E, "F": letterNumber.F, "G": letterNumber.G, "H": letterNumber.H, "I": letterNumber.I, "J": letterNumber.J, "K": letterNumber.K, "L": letterNumber.L, "M": letterNumber.M]
        return charToEnum[char] ?? letterNumber.none
    }
    
    func getButton(atIndex Index: Int) -> CustomButton{
        return allButtons[Index]
    }
    
    func getButton(row: Character, column: Int, isHorizontal: Bool) -> CustomButton{
        var currentIndex : Int
        var nextIndex : Int = column
        let row : Int = letterToNum[convertLetter(row)]!
        var nextButton : CustomButton

        // current index / button
        currentIndex = column + (13 * row) - 1
        
        // edge case if the column is 12
        if column == 13 && isHorizontal{
            return getButton(atIndex: currentIndex)
        }
        
        // getting next button to the left
        if isHorizontal {
            nextIndex = currentIndex + 1
            nextButton = getButton(atIndex: nextIndex)
            // bottom is black so go back to current button
            if nextButton.backgroundColor == UIColor.black {
                return getButton(atIndex: currentIndex)
            } else {
                return nextButton
            }
        }
        // get next button from the bottom
        else {
            // grab vertical button below unless its the last row
            nextIndex = currentIndex + 13
            if nextIndex > allButtons.count - 1{
                nextIndex = currentIndex
            }
            nextButton = getButton(atIndex: nextIndex)
            if nextButton.backgroundColor == UIColor.black {
                return getButton(atIndex: currentIndex)
            }
            else {
                return getButton(atIndex: nextIndex)
            }
        }
        
    }
    
    func highlightRowColumn(identifier: String, _ isHorizontal: Bool){
        if identifier == "" {
            return
        }
        else {
            var tempIdentifier : String = identifier
            let row : Character = identifier.first!
            tempIdentifier.removeFirst()
            let column : Int = Int(tempIdentifier)!
            
            for button in allButtons {
                var identifierButton : String = button.accessibilityIdentifier ?? ""
                
                if isHorizontal{
                    // Highlighting the rows
                    let rowStore : Character = identifierButton.first!
                    // Check if the Letter Matches
                    if row == rowStore {
                        if button.backgroundColor != UIColor.black{
                            button.backgroundColor = UIColor.yellow
                        }
                    }
                } else {
                    // Highlighting the columns
                    identifierButton.removeFirst()
                    let columnStore : Int = Int(identifierButton)!
                    
                    if column == columnStore {
                        if button.backgroundColor != UIColor.black{
                            button.backgroundColor = UIColor.yellow
                        }
                    }
                }
            }
        }
    }
    
    func removeHighlights(){
        for button in allButtons {
            if button.backgroundColor == UIColor.yellow{
               button.backgroundColor = UIColor.white
            }
        }
    }
    
    func clearTitleText(){
        for button in allButtons{
            button.setTitle("", for: .normal)
        }
    }
    
    func getNextButton(identifier: String, isHorizontal: Bool) -> CustomButton{
        var button: CustomButton
        var index = identifier
        // add parameter whether get button horizontally or vertically
        let row: Character = index.first!
        index.removeFirst()
        
        let column : Int = Int(index)!
        
        button = getButton(row: row, column: column, isHorizontal: isHorizontal)
        
        // check if the box is black, if so go back to previous button

        return button
    }
    
    // loading levels
    func loadLevel(_ string: String) {
        var iter : Int = 0
        for char in string{
            if char == "-" && char != "\n"{
                getButton(atIndex: iter).backgroundColor = UIColor.black
            }else {
                getButton(atIndex: iter).textField.text = ""
            }
            iter = iter + 1
        }
    }
    
    func loadCornerNumber(_ numbers: [Int: (row: letterNumber, column: Int, type: wordStyle)]){
        for number in numbers {
            // get letter of the button row
            let row = number.value.row
            // convert letter to int
            let rowNumber = letterToNum[row]
            
            // get number of the button column
            let column = number.value.column
            
            let currentIndex = column + (13 * rowNumber!) - 1
            let button : CustomButton = getButton(atIndex: currentIndex)
            button.number = number.key
            button.cornerLabel.text = "\(number.key)"
            button.style = number.value.type
        }
    }
    
    func getResult(){
        var result: String = ""
        for button in allButtons{
            if button.textField.text == ""{
                result += "-"
            }
            else {
                result += button.textField.text ?? ""
            }
        }
        print("\(result)")
    }
    
}
