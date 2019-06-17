//
//  Client.swift
//  SwiftAveiroTheHotelBuffet
//
//  Created by Rodrigo López-Romero Guijarro on 02/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation

public struct Client {
    
    public let name: String
    public let bacallaoUnitsToEat: Int
    public let notificationToWaiter: BacallaoWarning
    
    init(name: String, bacallaoUnitsToEat: Int, notificationToWaiter: BacallaoWarning = BacallaoWarningImpl()) {
        self.name = name
        self.bacallaoUnitsToEat = bacallaoUnitsToEat < 0 ? 0 : bacallaoUnitsToEat
        self.notificationToWaiter = notificationToWaiter
    }    
}

open class DefaultClients {
    public static let Charlie = Client(name: "Charlie", bacallaoUnitsToEat: 2)
    public static let Thomas = Client(name: "Thomas", bacallaoUnitsToEat: 1)
    public static let David = Client(name: "David", bacallaoUnitsToEat: 1)
    public static let Alice = Client(name: "Alice", bacallaoUnitsToEat: 2)
    public static let Emily = Client(name: "Emily", bacallaoUnitsToEat: 3)
    
    public static let all: [Client] =
        [DefaultClients.Charlie, DefaultClients.Thomas, DefaultClients.David, DefaultClients.Alice, DefaultClients.Emily]
}

