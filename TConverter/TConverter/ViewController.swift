//
//  ViewController.swift
//  TConverter
//
//  Created by Михаил Зиновьев on 16.10.2020.
//  Copyright © 2020 Михаил Зиновьев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiasLabel: UILabel!
    @IBOutlet weak var faringateLabel: UILabel!
    @IBOutlet weak var sliderChanged: UISlider! {
        didSet {
            sliderChanged.maximumValue = 100
            sliderChanged.minimumValue = 0
            sliderChanged.value = 0
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        let temperatureCelsias = Int (round (sender.value))
        celsiasLabel.text = "\(temperatureCelsias)ºC"
        let temperatureFaringate = Int (round((sender.value * 9 / 5 ) + 32))
        faringateLabel.text = "\(temperatureFaringate)ºF"
    }
    
    

    
}

