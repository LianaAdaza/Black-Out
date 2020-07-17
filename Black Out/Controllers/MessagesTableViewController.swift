//
//  MessagesTableViewController.swift
//  Black Out
//
//  Created by Liana Adaza on 7/16/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class MessagesTableViewController: UITableViewController {
    
    var newMessage = [messages]()

    override func viewDidLoad() {
        super.viewDidLoad()
        if newMessage.count > 0{
            return
        }
        newMessage.append(messages(text: "Sister Honey's Bakery"))
         newMessage.append(messages(text: "The Social House"))
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newMessage.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let item = newMessage[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }

}
