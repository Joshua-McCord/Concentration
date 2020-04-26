//
//  Card.swift
//  Concentration
//
//  Created by Joshua Cole McCord on 4/26/20.
//  Copyright © 2020 Joshua Cole McCord. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init()
    {
        self.identifier = Card.getUniqueIdentifier()
    }
}
