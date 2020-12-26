//
//  Player.swift
//  TreIRad
//
//  Created by Zakaria Mosa on 2020-12-25.
//

import Foundation

class Player{
    var player_name:String = ""
    var player_type:PlayerType
    init(playerName:String, playerType:PlayerType) {
        self.player_name=playerName
        self.player_type=playerType
    }
}
