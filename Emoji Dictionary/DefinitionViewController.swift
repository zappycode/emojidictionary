//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Nick Walter on 8/1/16.
//  Copyright © 2016 Zappy Code. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        
        if emoji == "🐹" {
          definitionLabel.text = "A cute Hamster!"
        }
        if emoji == "😎" {
            definitionLabel.text = "A dude with sunglasses"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
