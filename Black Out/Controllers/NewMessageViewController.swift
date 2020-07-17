//
//  NewMessageViewController.swift
//  Black Out
//
//  Created by Liana Adaza on 7/16/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class NewMessageViewController: UIViewController {
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressField: UITextField!
    
    @IBAction func changeAddressLabel(_ sender: UIBarButtonItem) {
        let userAddressField = addressField.text
        addressLabel.text = userAddressField
        addressField.text = ""
    }
    
   
    
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBAction func sendButtonTappped(_ sender: UIButton){  UIView.animate(withDuration: 1, animations: {
                  self.messageField.frame.origin.y -= 500
                  self.messageField.frame.origin.x += 40
                  self.messageField.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
                  self.messageField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
              }, completion: nil)
          }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
}
