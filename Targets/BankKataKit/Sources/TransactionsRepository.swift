/// sourcery: mockable
public protocol TransactionsRepositoryProtocol {
    func addDeposit(amount: Int)
    func addWithdraw(amount: Int)
    func allTransactions() -> [TransactionProtocol]
}

/// sourcery: mockable
public protocol TransactionProtocol {
    var date: String { get }
    var amount: Int { get }
}

public class TransactionsRepository: TransactionsRepositoryProtocol {
    private var transactions = [Transaction]()
    private let dateProvider: DateProviderProtocol
    
    public init(_ dateProvider: DateProviderProtocol) {
        self.dateProvider = dateProvider
    }
    
    public func addDeposit(amount: Int) {
        transactions.append(Transaction(date: dateProvider.currentDateAsString(),
                                        amount: amount))
    }
    
    public func addWithdraw(amount: Int) {
        transactions.append(Transaction(date: dateProvider.currentDateAsString(),
                                        amount: -amount))
    }
    
    public func allTransactions() -> [TransactionProtocol] {
        return self.transactions
    }
}

public struct Transaction: TransactionProtocol, Equatable {
    public var date: String
    public var amount: Int
}
