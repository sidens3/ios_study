//
//  ViewController.swift
//  OutletsAndActions
//
//  Created by Михаил Зиновьев on 12.10.2020.
//  Copyright © 2020 Михаил Зиновьев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var labelCollectins: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        label.text = "Hello label"
    }
    
}

