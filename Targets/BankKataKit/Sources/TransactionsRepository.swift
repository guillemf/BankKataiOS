//
// Created by Guillermo Fernandez on 28/05/2021.
// Copyright (c) 2021 com.cokaido. All rights reserved.
//

import Foundation

/// sourcery: mockable
public protocol TransactionsRepositoryProtocol {
    func addDeposit(amount: Int)
    func addWithdraw(amount: Int)
    func allTransactions() -> [TransactionProtocol]
}

/// sourcery: mockable
public protocol TransactionProtocol {
}

public class TransactionsRepository: TransactionsRepositoryProtocol {
    
    public init() { }
    
    public func addDeposit(amount: Int) {
        fatalError("Method not implemented")
    }
    
    public func addWithdraw(amount: Int) {
        fatalError("Method not implemented")
    }
    
    public func allTransactions() -> [TransactionProtocol] {
        fatalError("Method not implemented")
    }
}
