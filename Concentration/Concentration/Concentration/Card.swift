//
//  Card.swift
//  Concentration
//
//  Created by Joshua Cole McCord on 4/26/20.
//  Copyright © 2020 Joshua Cole McCord. All rights reserved.
//

import Foundation

struct Card : Hashable
{
    func hash(into hasher: inout Hasher) -> Int {
        return identifier
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init()
    {
        self.identifier = Card.getUniqueIdentifier()
    }
}
