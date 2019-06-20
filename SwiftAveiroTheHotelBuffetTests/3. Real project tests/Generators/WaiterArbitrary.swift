//
//  WaiterArbitrary.swift
//  SwiftAveiroTheHotelBuffetTests
//
//  Created by Rodrigo López-Romero Guijarro on 02/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation
import SwiftCheck
@testable import SwiftAveiroTheHotelBuffet

extension Waiter: Arbitrary {
    public static var arbitrary: Gen<Waiter> {
        return Gen<Waiter>.one(of: [
            Gen<Waiter>.pure(DefaultWaiters.Martina),
            Gen<Waiter>.pure(DefaultWaiters.Jack)
            ])
    }
}
