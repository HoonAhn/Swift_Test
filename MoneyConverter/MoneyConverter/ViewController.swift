//
//  ViewController.swift
//  MoneyConverter
//
//  Created by Sanghoon Ahn on 2016. 7. 12..
//  Copyright © 2016년 Sanghoon Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currencySegment: UISegmentedControl!
    
    @IBOutlet weak var sourceMoneyField: UITextField!
    
    @IBOutlet weak var targetMoneyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertMoney(sender: AnyObject) {
        
        guard let sourceCurrency = Currency(rawValue: currencySegment.selectedSegmentIndex) else {
            print("Source Currency Error")
            return
        }
        
        guard let sourceAmount = Double(sourceMoneyField.text!) else {
            targetMoneyLabel.text = "Error"
            return
        }
        
        let sourceMoney = Money(sourceAmount, currecy: sourceCurrency)
       
        var targetMoneyString = ""
        
        for (var i=0; i < 4; i++) {
            targetMoneyString += sourceMoney.valueInCurrecy(Currency.init(rawValue: i)!)
            targetMoneyString += "\r\n"
        }
        targetMoneyLabel.text = targetMoneyString
    }

}

