//
//  GrassViewController.swift
//  pickAGrass
//
//  Created by Annica Chiu on 8/1/19.
//  Copyright © 2019 Annica Chiu. All rights reserved.
//

import UIKit

var pokemonList = ["Bulbasaur", "Mudkip", "Ninetales", "Pichu", "Phanpy", "Munna", "Mimikyu", "Scraggy", "Scizor", "Ducklett", "Mawile", "Snorunt", "Palkia", "Swirlix", "Seviper", "Bidoof", "Mienfoo", "Onix"]

func whatPokemonFound() -> String {
    let randPokemonIndex = Int.random(in: 1 ... 18)
    return pokemonList[randPokemonIndex]
}

let pokemonFound = whatPokemonFound()

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
        var grassMessage = "Grass not working"
        var monWasFound = false
        
        let randNum = Int.random(in: 1 ... 5)
        
        if (randNum == 1) {
             grassMessage = "You found a \(pokemonFound)!"
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
