//
//  MockBacallaoWarning.swift
//  SwiftAveiroTheHotelBuffetTests
//
//  Created by Rodrigo López-Romero Guijarro on 17/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation
@testable import SwiftAveiroTheHotelBuffet

class MockBacallaoWarningImpl: BacallaoWarning {
    
    var messageSent: String?
    
    func notify(with message: String) {
        messageSent = message
    }
}
