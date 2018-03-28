//
//  DefinitionViewController.swift
//  EmoDic
//
//  Created by Shamar Smith-Standford on 3/22/18.
//  Copyright © 2018 GawdCode. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var creationYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🦉" {
          definitionLabel.text = "Sham's Owl"
            categoryLabel.text = "Animal"
            creationYearLabel.text = "CreationYear: 2008"
        }
        if emoji == "🐬" {
          definitionLabel.text = "Issa dolphin"
            categoryLabel.text = "Animal"
            creationYearLabel.text = "CreationYear: 2008"
        }
        if emoji == "💩" {
            definitionLabel.text = "Pile o' Poo"
            categoryLabel.text = "Smiley"
            creationYearLabel.text = "CreationYear: 2008"
        }
        if emoji == "🤬" {
            definitionLabel.text = "Cussin'"
            categoryLabel.text = "Smiley"
            creationYearLabel.text = "CreationYear: 2008"
        }
        if emoji == "😍" {
            definitionLabel.text = "Looking at something lovely"
            categoryLabel.text = "Smiley"
            creationYearLabel.text = "CreationYear: 2008"
        }
        if emoji == "🐒" {
            definitionLabel.text = "Sam's Monkey"
            categoryLabel.text = "Animal"
            creationYearLabel.text = "CreationYear: 2008"
        }
        if emoji == "😭" {
            definitionLabel.text = "Saw something hilarious"
            categoryLabel.text = "Smiley"
            creationYearLabel.text = "CreationYear: 2008"
        }
        func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
    

}
}
