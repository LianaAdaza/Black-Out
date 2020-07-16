//
//  Business.swift
//  Black Out
//
//  Created by Liana Adaza on 7/15/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class Business: NSObject {
    var name: String = ""
    var address1: String = ""
    var address2: String = ""
    var phoneNumber: String = ""
    var url: String = ""
    
    init(name: String, address1: String, address2:String, phoneNumber: String, url: String) {
        self.name = name
        self.address1 = address1
        self.address2 = address2
        self.phoneNumber = phoneNumber
        self.url = url
    }
}

final class BusinessDB {
    static let sharedInstance = BusinessDB ()
    
    private init () {
        // Prevent unauthorized initialization
    }
    
    var sofloBusinesses: [Business] = [
        Business(name: "Awash Ethiopian Restaurant", address1: "19934 NW Second Ave", address2: "Miami Gardens, FL 33169", phoneNumber: "(305) 770-5100", url: "https://www.awashmiami.com"),
        Business(name: "Balloo Restaurant", address1: "19 SE Second Ave, Suite #4", address2: "Miami, FL 33131", phoneNumber: "(786) 534-2768", url: "https://www.balloorestaurant.com"),
        Business(name: "Bon Gout BBQ", address1: "99 NW 54th Street", address2: "Miami, FL 33127", phoneNumber: "(305) 381-5464", url: "https://www.bongoutbbq.com"),
        Business(name: "Clive's Cafe", address1: "5890 NW 2nd Ave", address2: "Miami, FL 33127", phoneNumber: "(305) 757-6512", url: "https://clivescafe.com"),
        Business(name: "World Famous House of Mac", address1: "13521 Biscayne Blvd", address2: "North Miami Beach, FL 33181", phoneNumber: "(786) 636-6967", url: "https://www.houseofmac.com/menu/world-famous-house-of-mac-north-miami-beach/"),
    ]
    
    var centralBusinesses: [Business] = [
        Business(name: "Sister Honey's Bakery", address1: "247 E Michigan St.", address2: "Orlando, FL 32806", phoneNumber: "(407) 730-7315", url: "https://www.sisterhoneys.com"),
        Business(name: "1000 Degrees Pizza Salad Wings", address1: "13599 W Colonial Drive", address2: "Winter Garden, FL 34787", phoneNumber: "(407) 554-3206", url: "https://www.1000degreespizza.com"),
        Business(name: "Chill Pop Lounge", address1: "12001 Avalon Lake Drive", address2: "Orlando, FL 32828", phoneNumber: "(407) 704-0295", url: "https://www.chillpoplounge.com"),
        Business(name: "Cephas' Hot Shop", address1: "1613 E 7th Ave", address2: "Tampa, FL 33605", phoneNumber: "(813) 247-9022", url: "https://cephashotshop.com"),
        Business(name: "Nile Ethiopian Restaurant", address1: "7048 International Drive", address2: "Orlando, FL 32819", phoneNumber: "(407) 354-0026", url: "http://www.nileorlando.com")
    ]
    
    var panhandleBusinesses: [Business] = [
        Business(name: "The Social House", address1: "4204 Herschel Street", address2: "Jacksonville, FL 32210", phoneNumber: "(904) 805-7179", url: "https://socialhouse.co"),
        Business(name: "Smoothie Time", address1: "1208-B Capital Circle SE", address2: "Tallahassee, FL 32301", phoneNumber: "(850) 354-8064", url: "https://www.smoothietimetally.com"),
        Business(name: "Soul Food Bistro", address1: "5310 Lenox Ave, Suite #1", address2: "Jacksonville, FL 32205", phoneNumber: "(904) 394-0860", url: "http://www.thesoulfoodbistro.com"),
        Business(name: "Mackey's Munchies", address1: "868 Blanding Blvd", address2: "Orange Park, Florida 32065", phoneNumber: "(904) 458-4246", url: "https://www.mackeysmunchies.com"),
        Business(name: "Pink Salt Restaurant & Wine Bar", address1: "5111 Baymeadows Rd Ste 19", address2: "Jacksonville, FL 32217", phoneNumber: "(904) 513-4548", url: "https://www.pinksaltrestaurant.com")
    ]
    
    func getSoFloBusinesses() -> [Business] {
        return sofloBusinesses
    }
    
    func getCentralBusinesses() -> [Business] {
        return centralBusinesses
    }
    
    func getPanhandleBusinesses() -> [Business] {
        return panhandleBusinesses
    }
}
