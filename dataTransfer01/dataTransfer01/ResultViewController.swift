//
//  ResultViewController.swift
//  dataTransfer01
//
//  Created by Sanghoon Ahn on 2016. 8. 11..
//  Copyright © 2016년 AHN. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // variables
    var paramEmail:String = ""
    var paramUpdate:Bool = false
    var paramInterval:Double = 0
    
    
    @IBOutlet var resultEmail: UILabel!
    
    @IBOutlet var resultUpdate: UILabel!
    
    @IBOutlet var resultInterval: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultEmail.text = paramEmail
        resultUpdate.text = (self.paramUpdate ? "자동갱신" : "자동갱신 안함")
        resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(sender: AnyObject) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
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
