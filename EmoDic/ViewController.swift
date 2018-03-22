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
    
        var emojis = ["😭","😇","😍","🦉","🤬","💩","🐬"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gawdlytableview.dataSource = self
        gawdlytableview.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

