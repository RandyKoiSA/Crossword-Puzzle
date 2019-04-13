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
    
    func getButton(row: Character, column: Int) -> CustomButton{
        var currentIndex: Int
        let row: Int = letterToNum[convertLetter(row)]!
        currentIndex = column + (13 * row) - 1
        return getButton(atIndex: currentIndex)
    }
    
    func getNextButton(row: Character, column: Int, isHorizontal: Bool) -> CustomButton{
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
                return nextButton
            }
        }
    }
    
    func getPrevButton(row: Character, column: Int, isHorizontal: Bool) -> CustomButton {
        var currentIndex : Int
        var prevIndex : Int = column
        let row : Int = letterToNum[convertLetter(row)]!
        var prevButton : CustomButton
        
        currentIndex = column + (13 * row) - 1

        if(column == 1 && isHorizontal){
            return getButton(atIndex: currentIndex)
        } else if(row == 0 && !isHorizontal){
            return getButton(atIndex: currentIndex)
        }
        
        if isHorizontal {
            prevIndex = currentIndex - 1
            prevButton = getButton(atIndex: prevIndex)
            if(prevButton.backgroundColor == UIColor.black){
                return getButton(atIndex: currentIndex)
            } else {
                return prevButton
            }
        } else {
            prevIndex = currentIndex - 13
            if prevIndex < 0 {
                prevIndex = currentIndex
            }
            prevButton = getButton(atIndex: prevIndex)
            if prevButton.backgroundColor == UIColor.black{
                return getButton(atIndex: currentIndex)
            } else {
                return prevButton
            }
        }
    }
    
    func highlightRowColumn(identifier: String, _ isHorizontal: Bool){
        if identifier == "" {
            return
        }
        else {
            // break the identifier with row and column
            var buttonInfo : (row: Character, column: Int) = parseIdentifier(identifier: identifier)
            // use the identifier information to geth the button that was pressed
            var currentButton = getButton(row: buttonInfo.row, column: buttonInfo.column)
            var prevButton = getPrevButton(row: buttonInfo.row, column: buttonInfo.column, isHorizontal: isHorizontal)
            
            // find the number corresponding the grid depending on across or down
            while(currentButton != prevButton){
                currentButton = prevButton
                buttonInfo = parseIdentifier(identifier: prevButton.accessibilityIdentifier!)
                prevButton = getPrevButton(row: buttonInfo.row, column: buttonInfo.column, isHorizontal: isHorizontal)
            }
            print(currentButton.number)
            
            // highlights the grid corresponding to the number and across or down
            while(currentButton.backgroundColor == UIColor.white.withAlphaComponent(0.7)){
                currentButton.backgroundColor = UIColor.yellow.withAlphaComponent(0.7)
                currentButton = getNextButton(identifier: currentButton.accessibilityIdentifier!, isHorizontal: isHorizontal)
            }
        }
    }
    
    func findButtonWithNumber(currentButton: CustomButton, isHorizontal: Bool) -> CustomButton {
        var cButton: CustomButton = currentButton
        var buttonInfo: (row: Character, column: Int) = parseIdentifier(identifier: currentButton.accessibilityIdentifier!)
        var prevButton = getPrevButton(row: buttonInfo.row, column: buttonInfo.column, isHorizontal: isHorizontal)
        
        // find the number corresponding the grid depending on across or down
        while(cButton != prevButton){
            cButton = prevButton
            buttonInfo = parseIdentifier(identifier: prevButton.accessibilityIdentifier!)
            prevButton = getPrevButton(row: buttonInfo.row, column: buttonInfo.column, isHorizontal: isHorizontal)
        }
        
        return cButton
    }
    
    // pases the accessibilityIdentifier to a readable row and column
    func parseIdentifier(identifier: String) -> (row: Character, column: Int){
        var tempIdentifier : String = identifier
        let rowChar : Character = identifier.first!
        tempIdentifier.removeFirst()
        let columnInt : Int = Int(tempIdentifier)!
        
        return (rowChar, columnInt)
    }
    
    // remove all yellow highlights
    func removeHighlights(){
        for button in allButtons {
            if button.backgroundColor == UIColor.yellow.withAlphaComponent(0.7){
               button.backgroundColor = UIColor.white.withAlphaComponent(0.7)
            }
        }
    }
    
    // removed all the O's that is in the Main Story Board
    func clearTitleText(){
        for button in allButtons{
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.white.withAlphaComponent(0.7)
        }
    }
    
    func getNextButton(identifier: String, isHorizontal: Bool) -> CustomButton{
        var button: CustomButton
        var index = identifier
        // add parameter whether get button horizontally or vertically
        let row: Character = index.first!
        index.removeFirst()
        
        let column : Int = Int(index)!
        
        button = getNextButton(row: row, column: column, isHorizontal: isHorizontal)
        
        // check if the box is black, if so go back to previous button

        return button
    }
    
    // loading levels
    func loadLevel(_ string: String) {
        var iter : Int = 0
        for char in string{
            if char == "-" && char != "\n"{
                let button = getButton(atIndex: iter)
                button.backgroundColor = UIColor.black
                button.isEnabled = false
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
