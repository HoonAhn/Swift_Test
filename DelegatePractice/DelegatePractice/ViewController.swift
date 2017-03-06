//
//  ViewController.swift
//  DelegatePractice
//
//  Created by Sanghoon Ahn on 2016. 8. 13..
//  Copyright © 2016년 AHN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    @IBOutlet var selectedResult: UILabel!
    
    @IBAction func loginAlert(sender: AnyObject) {
        let alert = UIAlertView(title: "로그인", message: "아이디와 비밀번호를 입력하세요", delegate: self, cancelButtonTitle: "완료")
        alert.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
        alert.show()
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if let nickname = alertView.textFieldAtIndex(0)?.text{
            if let pw = alertView.textFieldAtIndex(1)?.text{
                self.selectedResult.text = "아이디와 비밀번호는 \(nickname)/\(pw)입니다."
            }else{
                let realert = UIAlertView(title: "로그인 오류", message: "아이디와 비밀번호를 모두 입력해주세요", delegate: nil, cancelButtonTitle: "확인")
                realert.show()
            }
        }else {
            let realert = UIAlertView(title: "로그인 오류", message: "아이디와 비밀번호를 모두 입력해주세요", delegate: nil, cancelButtonTitle: "확인")
            realert.show()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

