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

    @IBAction func showMessage(sender: UIButton) {
        var alertController = UIAlertController(title: "Grass Patch", message: "Grass not working", preferredStyle: .alert)
        
        let randNum = Int.random(in: 1 ... 6)
        
        if (randNum == 1) {
             alertController = UIAlertController(title: "Grass Patch", message: "You found a Pokemon!", preferredStyle: .alert)
        } else {
            alertController = UIAlertController(title: "Grass Patch", message: "No Pokemon here", preferredStyle: .alert)
        }
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}
