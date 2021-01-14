//
//  ResultViewController.swift
//  TreIRad
//
//  Created by Zakaria Mosa on 2020-12-26.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        lblwinnerName.text=winnername
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonStartewGamePressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueToNewGame, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier==segueToNewGame{
            let destinationVC=segue.destination as! ViewController
            destinationVC.playerx=playerx
            destinationVC.playery=playery
        }
    }
    
    let segueToNewGame="segueToNewGame"
    
    @IBOutlet weak var lblwinnerName: UILabel!
    var winnername:String?
    var playerx:String?
    var playery:String?
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
