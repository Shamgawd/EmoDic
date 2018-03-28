//
//  ViewController.swift
//  EmoDic
//
//  Created by Shamar Smith-Standford on 3/15/18.
//  Copyright © 2018 GawdCode. All rights reserved.
//
//Just adding this for my first commit

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var gawdlytableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gawdlytableview.dataSource = self
        gawdlytableview.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
            DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😭"
        emoji1.creationYear = 2013
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face who's extra weak"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐒"
        emoji2.creationYear = 1994
        emoji2.category = "Animal"
        emoji2.definition = "Sam's Monkey"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😍"
        emoji3.creationYear = 2014
        emoji3.category = "Smiley"
        emoji3.definition = "Seeing something lovely"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🦉"
        emoji4.creationYear = 1994
        emoji4.category = "Animal"
        emoji4.definition = "Sham's Owl"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤬"
        emoji5.creationYear = 2012
        emoji5.category = "Smiley"
        emoji5.definition = "Cussin'"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "💩"
        emoji6.creationYear = 2014
        emoji6.category = "Smiley"
        emoji6.definition = "Pile o' poop"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐬"
        emoji7.creationYear = 1994
        emoji7.category = "Animal"
        emoji7.definition = "Issa Dolphin"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
        
    }
}

