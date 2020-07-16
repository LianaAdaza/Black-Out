//
//  BusinessTableViewCell.swift
//  Black Out
//
//  Created by Liana Adaza on 7/15/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class BusinessTableViewCell: UITableViewCell, UITextViewDelegate {
    
    @IBOutlet var businessTextView: UITextView!
    var url: String = ""
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func sendToBrowser(_ businessTextView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}
