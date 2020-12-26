//
//  StartViewController.swift
//  TreIRad
//
//  Created by Zakaria Mosa on 2020-12-26.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let segueToMainGameBoard="segueToMainGameBoard"
    

    @IBAction func buttonStartNewGamePressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueToMainGameBoard, sender: self)
        print("buttonStartGamePressedAction pressed")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier==segueToMainGameBoard{
            let destinationVC=segue.destination as! ViewController
            destinationVC.playerx=playerx.text
            destinationVC.playery=playery.text
        }
    }
    
    
    @IBOutlet weak var playerx: UITextField!
    @IBOutlet weak var playery: UITextField!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
