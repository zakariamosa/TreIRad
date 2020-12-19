//
//  TreIRadModel.swift
//  TreIRad
//
//  Created by Zakaria Mosa on 2020-12-15.
//

import Foundation
var playerMoves:[(Player,Move)]=[]
struct TreIRadModel{
    //var playerMoves:[(Player,Move)]=[]
    init(player:Player, move:Move) {
        let newmove:[(Player,Move)]=[(player,move)]
        //self.playerMoves.append(contentsOf: newmove)
        //self.playerMoves.insert(contentsOf: newmove, at: playerMoves.count)
        playerMoves.insert(contentsOf: newmove, at: playerMoves.count)
    }
    
    
}
