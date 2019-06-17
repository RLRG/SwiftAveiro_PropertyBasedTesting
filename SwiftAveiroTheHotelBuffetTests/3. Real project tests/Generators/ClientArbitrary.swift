//
//  ClientArbitrary.swift
//  SwiftAveiroTheHotelBuffetTests
//
//  Created by Rodrigo López-Romero Guijarro on 02/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation
import SwiftCheck
@testable import SwiftAveiroTheHotelBuffet

extension Client: Arbitrary {
    public static var arbitrary: Gen<Client> {
        return Gen<Client>.one(of: [
            Gen<Client>.pure(DefaultClients.Charlie),
            Gen<Client>.pure(DefaultClients.Thomas),
            Gen<Client>.pure(DefaultClients.David),
            Gen<Client>.pure(DefaultClients.Alice),
            Gen<Client>.pure(DefaultClients.Emily)
            ])
    }
    
    public static var arbitraryHungry: Gen<Client> {
        return Gen<Int>.fromElements(in: 8...Int.max).map {
            let name = String.arbitrary.generate
            return Client(name: name, bacallaoUnitsToEat: $0)
        }
    }
    
    public static var arbitraryNotSoHungry: Gen<Client> {
        return Gen<Int>.fromElements(in: 0...7).map {
            let name = String.arbitrary.generate
            return Client(name: name, bacallaoUnitsToEat: $0)
        }
    }
}
