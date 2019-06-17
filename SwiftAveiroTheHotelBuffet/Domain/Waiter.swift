//
//  Waiter.swift
//  SwiftAveiroTheHotelBuffet
//
//  Created by Rodrigo López-Romero Guijarro on 02/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation

public struct Waiter {
    
    public let name: String
    public let bacallaoUnitsToAdd: Int
    
    init(name: String, bacallaoUnitsToAdd: Int) {
        self.name = name
        self.bacallaoUnitsToAdd = bacallaoUnitsToAdd < 0 ? 0 : bacallaoUnitsToAdd
    }
}

open class DefaultWaiters {
    public static let Martina = Waiter(name: "Martina", bacallaoUnitsToAdd: 10)
    public static let Jack = Waiter(name: "Jack", bacallaoUnitsToAdd: 20)
    
    public static let all: [Waiter] = [DefaultWaiters.Martina, DefaultWaiters.Jack]
}
