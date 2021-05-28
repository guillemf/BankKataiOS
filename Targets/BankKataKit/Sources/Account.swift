import Foundation

/// sourcery: mockable
public protocol AccountProtocol {
    func deposit(amount: Int)
    func withdraw(amount: Int)
    func printStatement()
}

public final class Account: AccountProtocol{
    public init() {}
    
    public func deposit(amount: Int) {
        fatalError("Method not implemented")
    }
    
    public func withdraw(amount: Int) {
        fatalError("Method not implemented")
    }
    
    public func printStatement() {
        fatalError("Method not implemented")
    }
}
