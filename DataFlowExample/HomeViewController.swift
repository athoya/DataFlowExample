//
//  HomeViewController.swift
//  DataFlowExample
//
//  Created by Jazilul Athoya on 16/05/19.
//  Copyright © 2019 Jazilul Athoya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    // variable penampung
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set label ke penampungnya
        nameLabel.text = name
    }

}
