//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Михаил Зиновьев on 07.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentegControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentegControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
    
    
    @IBAction func choiseSegmented(_ sender: UISegmentedControl) {
        label.isHidden = false
        switch segmentegControl.selectedSegmentIndex {
        case 0:
            label.text = "The first segment is selected"
            label.textColor = .red
        case 1:
            label.text = "The second segment is selected"
            label.textColor = .blue
        case 2:
            label.text = "The third segment is selected"
            label.textColor = .yellow
        default:
            print("Somthing wrong")
        }
    }
    

}

