//
//  GameViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBAction func cancelToGameViewController(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ResultsViewController
        switch segue.identifier {
        case "rockSegue":
            vc?.userSelection = GameOption.rock
        case "paperSegue":
            vc?.userSelection = GameOption.paper
        case "scissorSegue":
            vc?.userSelection = GameOption.scissors
        case .none:
            break
        case .some(_):
            break
        }
    }
    
    
}
