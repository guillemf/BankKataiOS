/// sourcery: mockable
public protocol PrinterProtocol {
    func print(_ transactions: [TransactionProtocol])
}

public class StatementPrinter: PrinterProtocol {
    public init() {}
    
    public func print(_ transactions: [TransactionProtocol]) {
        fatalError("Method not implemented")
    }
}
