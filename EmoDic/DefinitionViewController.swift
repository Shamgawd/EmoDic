//
//  DefinitionViewController.swift
//  EmoDic
//
//  Created by Shamar Smith-Standford on 3/22/18.
//  Copyright © 2018 GawdCode. All rights reserved.
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
        
        if emoji == "🦉" {
          definitionLabel.text = "An adorable owl"
        }
        if emoji == "🐬" {
          definitionLabel.text = "Issa dolphin"
        }
        if emoji == "💩" {
            definitionLabel.text = "Pile o' Poo"
        }
        if emoji == "🤬" {
            definitionLabel.text = "Cussin'"
        }
        if emoji == "😍" {
            definitionLabel.text = "Looking at something lovely"
        }
        if emoji == "🐒" {
            definitionLabel.text = "Sam's Monkey"
        }
        if emoji == "😭" {
            definitionLabel.text = "Saw something hilarious"
        }
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
    

}
}
