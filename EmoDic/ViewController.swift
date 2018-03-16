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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gawdlytableview.dataSource = self
        gawdlytableview.dataDelegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

