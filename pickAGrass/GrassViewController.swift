//
//  GrassViewController.swift
//  pickAGrass
//
//  Created by Annica Chiu on 8/1/19.
//  Copyright © 2019 Annica Chiu. All rights reserved.
//

import UIKit

class GrassViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var grass1: UIButton!
    @IBOutlet weak var grass2: UIButton!
    @IBOutlet weak var grass3: UIButton!
    @IBOutlet weak var grass4: UIButton!
    @IBOutlet weak var grass5: UIButton!
    @IBOutlet weak var grass6: UIButton!

    @IBAction func mayTalking(_ sender: Any) {
        let mayMessages = [
            "\"Gotta catch 'em all\"",
            "\"My Mudkip will destroy your Pokemon\"",
            "\"I have all 8 Hoenn gym badges\"",
            "\"I leik mudkipz\"",
            "\"My Mudkip is in the top percentage of all Mudkip\""
        ]
        
        let alertController = UIAlertController(title: "May", message: mayMessages[Int.random(in: 0 ... 4)], preferredStyle: .alert)
        
        let okMay = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okMay)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showMessage(sender: UIButton) {
        var grassMessage = "Grass not working"
        var monWasFound = false
        
        let randNum = Int.random(in: 1 ... 5)
        
        if (randNum == 1) {
             grassMessage = "You found a Pokemon!"
            monWasFound = true
        } else if (randNum == 2) {
            grassMessage = "You found a useless potato."
        } else {
            grassMessage = "No Pokemon here."
        }
        let alertController = UIAlertController(title: "Grass Patch", message: grassMessage, preferredStyle: .alert)
        
        var alertJawn = UIAlertAction(title: "OK", style: .default, handler: {(action) -> Void in
            self.performSegue(withIdentifier: "FoundPokemonSegue", sender: self)})
        if (monWasFound == false){
            alertJawn = UIAlertAction(title: "OK", style: .default, handler: nil)
        }
        alertController.addAction(alertJawn)
    
        self.present(alertController, animated: true, completion: nil)
    }
}
