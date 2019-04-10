//
//  LevelStore.swift
//  Crossword
//
//  Created by Randy Le on 4/8/19.
//  Copyright © 2019 Project Koisa. All rights reserved.
//

import UIKit

class LevelStore {

    var levelOneHorizontalHint = [1: "Floorshow", 4: "Spooky", 7: "Detection Device", 9: "Vertical",
        10: "Inactivity", 11: "Measuring implement", 12: "Dictator", 14: "Ecclesiastic", 18: "Copious",
        20: "Drawn", 22: "Pouch worn with a kit", 23: "Diadem", 24: "Admittance", 25: "Spiny anteater"]
    var levelOneVerticalHint = [1: "Transported", 2: "Emblem", 3: "Tropical Bird", 4: "Mistake",
        5: "Dependable follower", 6: "Go in", 8: "Magnitude relation",
        13: "Reinforcement", 15: "Reasoned Judgement", 16: "Musical Passge", 17: "Opportunity",
        18: "Part of a church", 19: "Ahead of time", 21: "Obviate"]
    
    var numberPosition : [Int: (letterNumber, Int, wordStyle)] =
        [1: (.A, 1, .both), 2: (.A, 3, .down), 3: (.A, 7, .down), 4: (.A, 9, .both),
         5: (.A, 11, .down), 6: (.A, 13, .down), 7: (.C, 1, .across), 8: (.C, 5, .down),
         9: (.C, 7, .across), 10: (.E, 1, .across), 11: (.E, 9, .across), 12: (.G, 1, .across),
         13: (.G, 3, .down), 14: (.G, 8, .across), 15: (.G, 9, .down),
         16: (.G, 13, .down), 17: (.H, 7, .down), 18: (.I, 1, .both), 19: (.I, 5, .down),
         20: (.I, 7, .across), 21: (.I, 11, .down), 22: (.K, 11, .across), 23: (.K, 9, .across),
         24: (.M, 1, .across), 25: (.M, 7, .across)]
    
    func levelOneString() -> String {
        let row1  = "CABARET-EERIE"
        let row2  = "A-A---O-R-E-N"
        let row3  = "RADAR-UPRIGHT"
        let row4  = "R-G-A-C-O-V-E"
        let row5  = "INERTIA-RULER"
        let row6  = "E---I-N---A--"
        let row7  = "DESPOT-CLERIC"
        let row8  = "--U---C-O---A"
        let row9  = "AMPLE-HAGGARD"
        let row10 = "I-P-A-A-I-V-E"
        let row11 = "SPORRAN-CORWN"
        let row12 = "L-R-L-C---I-Z"
        let row13 = "ENTRY-ECHIDNA"
        
        return row1 + row2 + row3 + row4 + row5 + row6 + row7 + row8 + row9 + row10 + row11 + row12 + row13
    }
    
}
