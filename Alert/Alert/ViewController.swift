//
//  ViewController.swift
//  Alert
//
//  Created by Takumi Muraishi on 2019/07/16.
//  Copyright © 2019 Takumi Muraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    @IBAction func displayAlert() {
        
        let title = "アラートテスト"
                let message = "タップしてくれてサンクス."
                let okText = "ok"

                let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
                let okayButton = UIAlertAction(title: okText, style: UIAlertAction.Style.cancel, handler: nil)
                alert.addAction(okayButton)

                present(alert, animated: true, completion: nil)
            }
            // 今回の「アラートを表示」はここまで
    
}
