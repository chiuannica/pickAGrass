//
//  ViewController.swift
//  pickAGrass
//
//  Created by Annica Chiu on 8/1/19.
//  Copyright © 2019 Annica Chiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
    @IBOutlet weak var grass1: UIButton!
    @IBOutlet weak var grass2: UIButton!
    @IBOutlet weak var grass3: UIButton!
    @IBOutlet weak var grass4: UIButton!
    @IBOutlet weak var grass5: UIButton!
    @IBOutlet weak var grass6: UIButton!
  */
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "FUN TIMES", message: "HELLOOOOO", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
    }
    /*
    let randNum = Int.random(in: 1 ... 6)
    
    var guess = 0
    
    func rightOrNaw() -> String{
        if (guess == randNum){
            return "yay!"
        } else {
            return "NOPE"
        }
    }
*/
}

