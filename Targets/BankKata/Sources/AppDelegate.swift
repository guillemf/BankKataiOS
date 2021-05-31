import SwiftUI
import BankKataKit
import BankKataUI

@main
struct BankKataApp: App {
    let dateProvider: DateProvide
    let repository: TransactionsRepository
    let statementPrinter: StatementPrinter
    let bankKataKit: Account
    
    init() {
        self.dateProvider = DateProvider()
        self.repository = TransactionsRepository(dateProvider)
        self.statementPrinter = StatementPrinter()
        self.bankKataKit = Account(repository, statementPrinter)

    }
    var body: some Scene {
        
        WindowGroup {
            BankKataUI()
        }
    }
}
