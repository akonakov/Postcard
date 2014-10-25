//
//  ViewController.swift
//  Postcard
//
//  Created by Aleksandr Konakov on 22/10/14.
//  Copyright (c) 2014 Aleksandr Konakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enterMessageTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        sendMailButton.setTitle("Send Mail", forState: UIControlState.Normal)
    }

}

