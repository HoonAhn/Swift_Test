//
//  Page1ViewController.swift
//  SceneTransition02
//
//  Created by Sanghoon Ahn on 2016. 8. 10..
//  Copyright © 2016년 AHN. All rights reserved.
//

import UIKit

class Page1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToPage1(sender : UIStoryboardSegue){
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        NSLog("Segue Identifier : %@", segue.identifier!)
        if (segue.identifier == "segueToPage2"){
            NSLog("Show 타입 세그 실행")
        }
        else if (segue.identifier == "customSegueToPage2"){
            NSLog("커스텀 타입 세그 실행")
        }
        else {
            NSLog("알 수 없는 세그")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
