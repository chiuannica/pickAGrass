//
//  FoundPokemonViewController.swift
//  pickAGrass
//
//  Created by Annica Chiu on 8/1/19.
//  Copyright © 2019 Annica Chiu. All rights reserved.
//

import UIKit

var PokeDict = ["Bulbasaur": "001",
                "Mudkip": "258",
                "Ninetales": "038",
                "Pichu": "172",
                "Phanpy": "231",
                "Munna": "571",
                "Mimikyu": "778",
                "Scraggy": "559",
                "Scizor": "212",
                "Ducklett": "580",
                "Mawile": "303",
                "Snorunt": "361",
                "Palkia": "484",
                "Swirlix": "684",
                "Seviper": "336",
                "Bidoof": "399",
                "Mienfoo": "619",
                "Onix": "095"]
class FoundPokemonViewController: UIViewController {

    @IBOutlet weak var congratsText: UILabel!
    
    @IBOutlet weak var picPokemonFound: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        congratsText.text = "You found a \(pokemonFound)!"
        picPokemonFound.image =  UIImage(named: PokeDict[pokemonFound]!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
