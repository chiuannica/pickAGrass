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
        var grassMessage = "Grass not working"
        
        let randNum = Int.random(in: 1 ... 5)
        
        if (randNum == 1) {
            let pokemonFound = whatPokemonFound()
             grassMessage = "You found a \(pokemonFound)!"
        } else if (randNum == 2) {
            grassMessage = "You found a useless potato."
        } else {
            grassMessage = "No Pokemon here."
        }
        let alertController = UIAlertController(title: "Grass Patch", message: grassMessage, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    
        present(alertController, animated: true, completion: nil)
    }
    func whatPokemonFound() -> String {
        var pokemonList = ["Bulbasaur", "Mudkip", "Ninetails", "Pichu", "Phanpy", "Munna", "Mimikyu", "Scraggy", "Scizor", "Ducklett", "Mawile", "Snorunt", "Palkia", "Swirlix", "Seviper", "Bidoof", "Mienfoo", "Onix"]
        let randPokemonIndex = Int.random(in: 1 ... 18)
        return pokemonList[randPokemonIndex]
    }
}
