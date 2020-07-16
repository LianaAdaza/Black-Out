//
//  PanhandleViewController.swift
//  Black Out
//
//  Created by Liana Adaza on 7/14/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class PanhandleViewController: UIViewController, UITextViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var panhandleTableView: UITableView!
    var allBusinesses = BusinessDB.sharedInstance
    var businesses: [Business] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panhandleTableView.delegate = self
        panhandleTableView.dataSource = self
        businesses = allBusinesses.getPanhandleBusinesses()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return businesses.count
     }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
    }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "businessCell", for: indexPath) as! BusinessTableViewCell
        cell.businessTextView.delegate = self
        
        let business = allBusinesses.getPanhandleBusinesses()[indexPath.row]
        
        let attributedString = NSMutableAttributedString(string: "\(business.name)\n\n\(business.address1)\n\n\(business.address2)\n\n\(business.phoneNumber)")
        attributedString.addAttribute(.link, value: business.url, range: NSRange(location: 0, length: attributedString.length))

        cell.businessTextView.attributedText = attributedString
        
        return cell
    }

}
