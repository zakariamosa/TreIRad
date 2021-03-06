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
        
        
        player1.text=playerx
        player2.text=playery
        
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
    
    
    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    
    
    
    let segueToResult="segueToResult"
    
    
    var allplayersmoves=PlayerMoves()
    var playerx:String?
    var playery:String?
    var lblwinner:String?
    
    
    
    @IBAction func btnClicked(_ sender: UIButton) {
        
        
        player(player)
        sender.setTitle(currentValue, for: UIButton.State.normal)
        sender.isEnabled=false
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
        
        
        allplayersmoves.thePlayerMoves.append(PlayerMove(player: currentPlayer,move:mov))
        print(sender.currentTitle?.lowercased())
        
        
        if doesThePlayerWinnTheGame(thecurrentplayer:currentPlayer){
            if currentValue=="X" {
                lblwinner=playerx
                performSegue(withIdentifier: segueToResult, sender: self)
            } else {
                lblwinner=playery
                performSegue(withIdentifier: segueToResult, sender: self)
            }
            
        }
        
        
        
        switchsegmentcontrol()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier==segueToResult{
            //winnername
            let destinationVC=segue.destination as! ResultViewController
            destinationVC.winnername=lblwinner
            destinationVC.playerx=playerx
            destinationVC.playery=playery
        }
    }
    
    func doesThePlayerWinnTheGame(thecurrentplayer:PlayerType)->Bool{
        let gamewinnr=DoWeHaveAWinner()
        
        
        let thisplayermoves=allplayersmoves.thePlayerMoves.filter {$0.player == thecurrentplayer }
        var arrayofthisplayermoves=[Int]()
        arrayofthisplayermoves.removeAll()
        for thisplyrmov in thisplayermoves {
            arrayofthisplayermoves.append(thisplyrmov.move.move)
        }
        
        if arrayofthisplayermoves.count>=3{
            let findListSet = Set(arrayofthisplayermoves)
            for arr in gamewinnr.gameWinningCases {
                let listSet = Set(arr)
                let allElemsContained = findListSet.isSubset(of: listSet)||listSet.isSubset(of: findListSet)
                if allElemsContained{
                    return true
                }
            }
        }
        
        if allplayersmoves.thePlayerMoves.count==9{
            lblwinner="Oavgjort"
            
            performSegue(withIdentifier: segueToResult, sender: self)
        }
        
        
        
        
        return false
    }
    
    
    
    
    
    
    
    
    
    func switchsegmentcontrol() {
        if player.selectedSegmentIndex==0
        {
            player.selectedSegmentIndex=1
            
        }else{
            player.selectedSegmentIndex=0
        }
    }
    
    private var currentValue:String="X"
    private var currentPlayer=PlayerType.X
    
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func player(_ sender: UISegmentedControl) {
        
        
            if sender.selectedSegmentIndex==0 {
                currentValue="X"
                currentPlayer=PlayerType.X
            }else{
                currentValue="O"
                currentPlayer=PlayerType.O
            }
    }
    
    
}

