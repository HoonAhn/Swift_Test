//
//  ViewController.swift
//  interaction_test
//
//  Created by Sanghoon Ahn on 2016. 6. 26..
//  Copyright © 2016년 Sanghoon Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBtn(sender: AnyObject) {
        imLabel.text = "Hello Swift"
    }

}

