//
//  ViewController.swift
//  TreIRad
//
//  Created by Zakaria Mosa on 2020-12-15.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btn11.tag=11
        btn12.tag=12
        btn13.tag=13
        btn21.tag=21
        btn22.tag=22
        btn23.tag=23
        btn31.tag=31
        btn32.tag=32
        btn33.tag=33
    }
    
    
    @IBOutlet weak var player: UISegmentedControl!
    
    
    @IBOutlet weak var btn11: UIButton!
    @IBOutlet weak var btn12: UIButton!
    @IBOutlet weak var btn13: UIButton!
    @IBOutlet weak var btn21: UIButton!
    @IBOutlet weak var btn22: UIButton!
    @IBOutlet weak var btn23: UIButton!
    @IBOutlet weak var btn31: UIButton!
    @IBOutlet weak var btn32: UIButton!
    @IBOutlet weak var btn33: UIButton!
    
    
    @IBAction func btnClicked(_ sender: UIButton) {
        sender.setTitle(currentValue, for: UIButton.State.normal)
        sender.isEnabled=false
        switchsegmentcontrol()
        player(player)
        print(sender.tag)//Optional("x")
        let mov=Move(pmove: sender.tag)
        switch currentPlayer {
        case .X:
            print("Current player is X")//will insert value in o
        case .O:
            print("Current player is O")//will insert value in x
        case .Dator:
            print("Current player is Dator")
        }
        TreIRadModel(player: currentPlayer,move:mov)
        print(sender.currentTitle?.lowercased())
        let mymodel=TreIRadModel(player: currentPlayer,move:mov)
        print(mymodel.playerMoves)
    }
    
    
    
    
    
    
    //var insertmove:TreIRadModel
    
    
    func switchsegmentcontrol() {
        if player.selectedSegmentIndex==0
        {
            player.selectedSegmentIndex=1
            
        }else{
            player.selectedSegmentIndex=0
        }
    }
    
    private var currentValue:String="X"
    private var currentPlayer=Player.X
    
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func player(_ sender: UISegmentedControl) {
        
        
            if sender.selectedSegmentIndex==0 {
                currentValue="X"
                currentPlayer=Player.X
            }else{
                currentValue="O"
                currentPlayer=Player.O
            }
        switch currentPlayer {
        case .X:
            print("Current player is X")
        case .O:
            print("Current player is O")
        case .Dator:
            print("Current player is Dator")
        }
    }
    
    
}

