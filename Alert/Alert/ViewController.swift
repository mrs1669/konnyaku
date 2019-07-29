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
        
        let title = "本当に押すのかよ"
                let message = "うぉぉぉぉ"
                let okText = "ok牧場"

                let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
                let okayButton = UIAlertAction(title: "キャンセル", style: UIAlertAction.Style.cancel, handler: nil)
                let noButton = UIAlertAction(title: "でふぉ", style: UIAlertAction.Style.default, handler: nil)
                let nandemoButton = UIAlertAction(title: "デストラクティブ (有害っぽい感)", style: UIAlertAction.Style.destructive, handler: nil)
        
                alert.addAction(okayButton)
                alert.addAction(noButton)
                alert.addAction(nandemoButton)

                present(alert, animated: true, completion: nil)
    }
            // 今回の「アラートを表示」はここまで
    
}
