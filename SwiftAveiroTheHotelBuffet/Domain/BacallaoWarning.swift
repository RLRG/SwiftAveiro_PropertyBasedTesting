//
//  BacallaoWarning.swift
//  SwiftAveiroTheHotelBuffet
//
//  Created by Rodrigo López-Romero Guijarro on 17/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation

public protocol BacallaoWarning {
    func notify(with message: String)
}

struct BacallaoWarningImpl: BacallaoWarning {
    func notify(with message: String) {
        print(message)
    }
}
