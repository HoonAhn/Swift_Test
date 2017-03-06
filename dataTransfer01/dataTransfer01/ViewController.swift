//
//  ViewController.swift
//  dataTransfer01
//
//  Created by Sanghoon Ahn on 2016. 8. 11..
//  Copyright © 2016년 AHN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var updateLabel: UILabel!
    
    @IBOutlet var intervalLabel: UILabel!
    
    @IBOutlet var updateSwitch: UISwitch!
    
    @IBOutlet var intervalStepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSwitch(sender: AnyObject) {
        let Switch = sender as! UISwitch
        
        if (Switch.on){
            updateLabel.text = "갱신함"
        } else {
            updateLabel.text = "갱신하지 않음"
        }
        
    }

    @IBAction func onStepper(sender: AnyObject) {
        let Stepper = sender as! UIStepper
        intervalLabel.text = "\(Int(Stepper.value))분 마다"
    }
    
    @IBAction func submitButton(sender: AnyObject) {
        if let rvc = self.storyboard!.instantiateViewControllerWithIdentifier("ResultVC") as? ResultViewController {
            rvc.paramEmail = self.emailTextField.text!
            rvc.paramUpdate = self.updateSwitch.on
            rvc.paramInterval = self.intervalStepper.value
            self.navigationController?.pushViewController(rvc, animated: true)
        }
    }
 
    @IBAction func onPerformSegue(sender: AnyObject){
        performSegueWithIdentifier("manualSubmit", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let rvc = segue.destinationViewController as? ResultViewController {
            rvc.paramEmail = self.emailTextField.text!
            rvc.paramUpdate = self.updateSwitch.on
            rvc.paramInterval = self.intervalStepper.value
        }
    }
    
    
    
}

