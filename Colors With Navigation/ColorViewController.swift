//
//  ColorViewController.swift
//  Colors With Navigation
//
//  Created by Hayden Haddock on 10/25/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorsTableView: UITableView!
    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    var bgColor = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = bgColor[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailsViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row {
                destination.colorName = colors[row]
                destination.bgColor = bgColor[row]
        }
        
    }

}
