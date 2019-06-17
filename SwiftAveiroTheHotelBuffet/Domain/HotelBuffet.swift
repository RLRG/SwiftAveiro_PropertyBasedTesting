//
//  HotelBuffet.swift
//  SwiftAveiroTheHotelBuffet
//
//  Created by Rodrigo López-Romero Guijarro on 02/06/2019.
//  Copyright © 2019 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation


public final class HotelBuffet {
    
    // MARK: - Properties
    
    var bacallaoRationsInBuffet: Int
    fileprivate let bacallaoWarningChannel: BacallaoWarning
    
    fileprivate var shouldAddMoreBacallao: Bool {
        return bacallaoRationsInBuffet <= 2
    }
    
    
    // MARK: - Init
    
    init(bacallaoRationsInBuffet: Int, bacallaoWarningChannel: BacallaoWarning) {
        self.bacallaoRationsInBuffet = bacallaoRationsInBuffet < 0 ? 0 : bacallaoRationsInBuffet
        self.bacallaoWarningChannel = bacallaoWarningChannel
    }
    
    convenience init(bacallaoRationsInBuffet: Int) {
        let bacallaoRationsInBuffet = bacallaoRationsInBuffet < 0 ? 0 : bacallaoRationsInBuffet
        self.init(bacallaoRationsInBuffet: bacallaoRationsInBuffet, bacallaoWarningChannel: BacallaoWarningImpl())
    }
    
    convenience init(bacallaoWarningChannel: BacallaoWarning) {
        self.init(bacallaoRationsInBuffet: 10, bacallaoWarningChannel: bacallaoWarningChannel)
    }
    
    convenience init() {
        self.init(bacallaoRationsInBuffet: 10, bacallaoWarningChannel: BacallaoWarningImpl())
    }
    
    
    // MARK: - Logic
    
    @discardableResult
    public func getBacallao(_ client: Client) -> [Waiter] {
        return getBacallao([client])
    }
    
    @discardableResult
    public func getBacallao(_ clients: [Client]) -> [Waiter] {
        var waitersAddingBacallao: [Waiter] = []
        clients.forEach { client in
            getBallacaoRations(client)
            if shouldAddMoreBacallao {
                let waiterAddingBacallao = notifyWeNeedMoreBacallaoBy(client)
                if let selectedWaiter = waiterAddingBacallao {
                    waitersAddingBacallao.append(selectedWaiter)
                }
            }
        }
        return waitersAddingBacallao
    }
    
    fileprivate func getBallacaoRations(_ client: Client) {
        bacallaoRationsInBuffet -= client.bacallaoUnitsToEat
        if bacallaoRationsInBuffet < 0 {
            bacallaoRationsInBuffet = 0
        }
    }
    
    fileprivate func notifyWeNeedMoreBacallaoBy(_ client: Client) -> Waiter? {
        guard let randomWaiter: Waiter = DefaultWaiters.all.randomElement() else {
            return nil
        }
        
        let clientMessage = "\n\nCLIENT: Hello \(randomWaiter.name) (waiter), I'm \(client.name) (client). We would like to eat more bacallao. Could you please add a little bit more? \nWAITER: Sure! I'll add \(randomWaiter.bacallaoUnitsToAdd) rations more!"
        bacallaoWarningChannel.notify(with: clientMessage)
        
        addMoreBacallaoRationsBy(randomWaiter)
        return randomWaiter
    }
    
    fileprivate func addMoreBacallaoRationsBy(_ waiter: Waiter) {
        bacallaoRationsInBuffet += waiter.bacallaoUnitsToAdd
    }
}
