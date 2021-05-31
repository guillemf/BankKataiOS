import Foundation
import XCTest

@testable import BankKataKit

final class BankKataTests: XCTestCase {
    func test_print_statement_containing_all_transactions() {
        let console = ConsoleMock()
        let repository = TransactionsRepository()
        let account = Account(repository)
        
        account.deposit(amount: 1000)
        account.withdraw(amount: 100)
        account.deposit(amount: 500)
        
        account.printStatement()
        
        XCTAssertEqual(4, console.printCallsCount)
        XCTAssertEqual("| DATE       | AMOUNT   | BALANCE |", console.printReceivedInvocations[0])
        XCTAssertEqual("| 10/05/2021 | 500.00   | 1400.00 |", console.printReceivedInvocations[1])
        XCTAssertEqual("| 02/05/2021 | -100.00  | 900.00  |", console.printReceivedInvocations[2])
        XCTAssertEqual("| 01/05/2021 | 1000.00  | 1000.00 |", console.printReceivedInvocations[3])
    }
}
