import XCTest

@testable import BankKataKit

class TransactionRepositoryTests: XCTestCase {
    var dateProvider: DateProviderMock!
    var transactionsRepository: TransactionsRepository!
    
    override func setUp() {
        dateProvider = DateProviderMock()
        dateProvider.currentDateAsStringClosure = { return "01/05/2021" }
        
        transactionsRepository = TransactionsRepository(dateProvider)
    }

    func test_repository_should_store_a_deposit_transaction() {
        transactionsRepository.addDeposit(amount: 100)
        
        let transactions = transactionsRepository.allTransactions()
        
        XCTAssertEqual(1, transactions.count)
        
        guard let receivedTransaction = transactions[0] as? Transaction else {
            XCTFail("Received item is not a transaction")
            return
        }
        XCTAssertEqual(Transaction(date: "01/05/2021", amount: 100), receivedTransaction)
    }
    
    func test_repository_should_store_a_withdraw_transaction() {
        transactionsRepository.addWithdraw(amount: 100)
        
        let transactions = transactionsRepository.allTransactions()
        
        XCTAssertEqual(1, transactions.count)
        
        guard let receivedTransaction = transactions[0] as? Transaction else {
            XCTFail("Received item is not a transaction")
            return
        }
        XCTAssertEqual(Transaction(date: "01/05/2021", amount: -100), receivedTransaction)
    }

}
