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
        
        self.view.backgroundColor = UIColor.cyan
        
        let myButton = UIButton(frame: CGRect(x:0, y:0, width:200, height:40))
        myButton.layer.position = CGPoint(x:self.view.frame.width/2, y:200)
        myButton.layer.cornerRadius = 20.0
        myButton.backgroundColor = UIColor.red
        myButton.setTitle("UIAlertを発動", for: .normal)
        myButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        
        self.view.addSubview(myButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
     ボタンアクション時に設定したメソッド.
     */
    internal func onClickMyButton(sender: UIButton) {
        
        // Alert生成.
        let myAlert: UIAlertController = UIAlertController(title: "title", message: "message", preferredStyle: UIAlertController.Style.alert)

        // OKアクション生成.
        let OkAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (action: UIAlertAction!) -> Void in
            print("OK")
        }
        
        // Cancelアクション生成.
        let CancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.destructive) { (action: UIAlertAction!) -> Void in
            print("Cancel")
        }
        
        // AlertにTextFieldを追加.
        myAlert.addTextField { (textField: UITextField!) -> Void in
            
            // 入力された文字を非表示にする.
            textField.isSecureTextEntry = true
            
            // NotificationCenterを生成.
            let myNotificationCenter = NotificationCenter.default
            
            // textFieldに変更があればchangeTextFieldメソッドに通知.
            myNotificationCenter.addObserver(self, selector: #selector(ViewController.changeTextField(sender:)), name: NSNotification.Name.UITextField.textDidChangeNotification, object: nil)
        }
        
        // Alertにアクションを追加.
        myAlert.addAction(OkAction)
        myAlert.addAction(CancelAction)
        
        // Alertを発動.
        present(myAlert, animated: true, completion: nil)
    }
    
    /*
     textFieldに変更が会った時に通知されるメソッド.
     */
    @objc internal func changeTextField (sender: NSNotification) {
        let textField = sender.object as! UITextField
        
        // 入力された文字を表示.
        print(textField.text!)
    }
}
