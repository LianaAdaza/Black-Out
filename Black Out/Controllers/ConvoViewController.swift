//
//  ConvoViewController.swift
//  Black Out
//
//  Created by Liana Adaza on 7/16/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class ConvoViewController: UIViewController {
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {   UIView.animate(withDuration: 1, animations: {
              self.messageField.frame.origin.y -= 400
              self.messageField.frame.origin.x += 40
              self.messageField.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.5509952911, blue: 0.9686274529, alpha: 1)
              self.messageField.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
          }, completion: nil)
      }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
