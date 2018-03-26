//
//  ViewController.swift
//  How many fingers 02
//
//  Created by D7702_09 on 2018. 3. 26..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func guess(_ sender: Any) {
        // 랜덤 숫자 생성
        let number = arc4random() % 6
        print(number)
        let numberString = String(number)
        
        if input.text == numberString {
            resultLabel.text = "빙고!!!"
        } else {
            resultLabel.text = "실패!!! Try again!!! 숨겨진 숫자는 현재 \(number)"
        }
        
      
        
    }
    
}

