//
//  CentralViewController.swift
//  Black Out
//
//  Created by Liana Adaza on 7/14/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class CentralViewController: UIViewController, UITextViewDelegate  {

    @IBOutlet var centralTesting: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attributedString = NSMutableAttributedString(string: "Sister Honey's Bakery")
        attributedString.addAttribute(.link, value: "https://www.sisterhoneys.com", range: NSRange(location: 19, length: 55))

        centralTesting.attributedText = attributedString
    }

    func centralTesting (_ centralTesting: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}
