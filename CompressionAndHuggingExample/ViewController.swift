//
//  ViewController.swift
//  CompressionAndHuggingExample
//
//  Created by Ross LeBeau on 3/31/16.
//  Copyright © 2016 Ross LeBeau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    
    let textArray: Array = Array("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.".characters)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.addTarget(self, action: #selector(ViewController.sliderChanged), forControlEvents: UIControlEvents.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sliderChanged(slider: UISlider) {
//        let val = 100.0 * slider.value
        let arrayIndex = Int(slider.value * Float(textArray.count))
        NSLog("index: %i", arrayIndex)
        label.text = String(textArray[0..<arrayIndex])
    }
}

