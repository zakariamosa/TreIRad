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
    }
    
    
    @IBOutlet weak var player: UISegmentedControl!
    
    
    @IBOutlet weak var btn11: UIButton!
    @IBAction func btn11Clicked(_ sender: UIButton) {
        btn11.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    
    @IBOutlet weak var btn12: UIButton!
    @IBAction func btn12Clicked(_ sender: UIButton) {
        btn12.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    @IBOutlet weak var btn13: UIButton!
    @IBAction func btn13Clicked(_ sender: UIButton) {
        btn13.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    @IBOutlet weak var btn21: UIButton!
    @IBAction func btn21Clicked(_ sender: UIButton) {
        btn21.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    @IBOutlet weak var btn22: UIButton!
    @IBAction func btn22Clicked(_ sender: UIButton) {
        btn22.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    @IBOutlet weak var btn23: UIButton!
    @IBAction func btn23Clicked(_ sender: UIButton) {
        btn23.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    @IBOutlet weak var btn31: UIButton!
    @IBAction func btn31Clicked(_ sender: UIButton) {
        btn31.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    @IBOutlet weak var btn32: UIButton!
    @IBAction func btn32Clicked(_ sender: UIButton) {
        btn32.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
    }
    
    @IBOutlet weak var btn33: UIButton!
    @IBAction func btn33Clicked(_ sender: UIButton) {
        btn33.setTitle(currentValue, for: UIButton.State.normal)
        switchsegmentcontrol()
        player(player)
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
        }
    }
    
    
}

