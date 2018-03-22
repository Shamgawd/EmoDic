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

    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
    

}
}
