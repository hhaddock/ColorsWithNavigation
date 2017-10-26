//
//  ColorDetailsViewController.swift
//  Colors With Navigation
//
//  Created by Hayden Haddock on 10/25/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ColorDetailsViewController: UIViewController {

    var colorName = String()
    var bgColor = UIColor()
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorNameLabel.text = colorName
        self.view.backgroundColor = bgColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
