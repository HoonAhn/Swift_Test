//
//  ViewController.swift
//  PracticeUI
//
//  Created by Sanghoon Ahn on 2016. 8. 8..
//  Copyright © 2016년 Sanghoon Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var FirstViewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TextChangeButton(sender: AnyObject) {
        FirstViewLabel.text = "Real First View"
    }

    @IBAction func ViewChangeButton(sender: AnyObject) {
        if let svc = self.storyboard?.instantiateViewControllerWithIdentifier("SecondVC"){
//            svc.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
            self.presentViewController(svc, animated: false, completion: nil)
        }

    }
    @IBAction func moveByNavi(sender: AnyObject) {
        if let svc = self.storyboard?.instantiateViewControllerWithIdentifier("SecondVC"){
            self.navigationController?.pushViewController(svc, animated: true)
        }
        
    }
}

