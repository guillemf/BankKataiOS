import Foundation
import XCTest
@testable import BankKataKit

final class BankKataKitTests: XCTestCase {
    var transactionsRepository: TransactionsRepositoryMock!
    var printer: PrinterMock!
    var account: Account!

    override func setUp() {
        transactionsRepository = TransactionsRepositoryMock()
        printer = PrinterMock()
        account = Account(transactionsRepository, printer)
    }
    func test_account_should_store_a_deposit_transaction() {
        account.deposit(amount: 100)
        
        XCTAssertEqual(100, transactionsRepository.addDepositAmountReceivedAmount)
    }
    
    func test_account_should_store_a_withdraw_transaction() {
        account.withdraw(amount: 100)
        
        XCTAssertEqual(100, transactionsRepository.addWithdrawAmountReceivedAmount)
    }
    
    func test_account_should_print_a_statement() {
        let transaction = TransactionMock()
        
        transactionsRepository.allTransactionsClosure = { [weak self] in
            guard let _ = self else { return [] }
            return [transaction]
        }
        
        account.printStatement()
        
        XCTAssertEqual(1, printer.printCallsCount)
        guard let receivedTransaction = printer.printReceivedTransactions?[0] as? TransactionMock else {
            XCTFail()
            return
        }
        XCTAssert(transaction === receivedTransaction)
    }
}
