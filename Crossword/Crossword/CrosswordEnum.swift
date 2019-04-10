//
//  LetterEnum.swift
//  Crossword
//
//  Created by Randy Le on 4/8/19.
//  Copyright © 2019 Project Koisa. All rights reserved.
//

import UIKit

struct CW{
    let letterToNum : [letterNumber: Int] = [letterNumber.A: 0, letterNumber.B: 1, letterNumber.C: 2, letterNumber.D: 3, letterNumber.E: 4, letterNumber.F: 5, letterNumber.G: 6, letterNumber.H: 7, letterNumber.I: 8, letterNumber.J: 9, letterNumber.K: 10, letterNumber.L: 11, letterNumber.M: 12]

    func convertLetter(_ char: Character) -> letterNumber{
        let charToEnum : [Character: letterNumber] = ["A": letterNumber.A, "B": letterNumber.B, "C": letterNumber.C, "D": letterNumber.D, "E": letterNumber.E, "F": letterNumber.F, "G": letterNumber.G, "H": letterNumber.H, "I": letterNumber.I, "J": letterNumber.J, "K": letterNumber.K, "L": letterNumber.L, "M": letterNumber.M]
        return charToEnum[char]!
    }
}

enum letterNumber {
    case A
    case B
    case C
    case D
    case E
    case F
    case G
    case H
    case I
    case J
    case K
    case L
    case M
    case none
}

enum wordStyle {
    case across
    case down
    case both
    case none
}


