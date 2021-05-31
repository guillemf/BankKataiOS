import Foundation

/// sourcery: mockable
public protocol AccountProtocol {
    func deposit(amount: Int)
    func withdraw(amount: Int)
    func printStatement()
}

public final class Account: AccountProtocol{
    private let repository: TransactionsRepositoryProtocol
    private let printer: PrinterProtocol
    
    public init(_ repository: TransactionsRepositoryProtocol,
                _ printer: PrinterProtocol) {
        self.repository = repository
        self.printer = printer
    }
    
    public func deposit(amount: Int) {
        self.repository.addDeposit(amount: amount)
    }
    
    public func withdraw(amount: Int) {
        self.repository.addWithdraw(amount: amount)
    }
    
    public func printStatement() {
        let transactions = self.repository.allTransactions()
        self.printer.print(transactions)
    }
}
