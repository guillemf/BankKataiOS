import SwiftUI
import BankKataKit
import BankKataUI

@main
struct BankKataApp: App {
    let repository: TransactionsRepository
    let bankKataKit: Account
    
    init() {
        self.repository = TransactionsRepository()
        self.bankKataKit = Account(repository)

    }
    var body: some Scene {
        
        WindowGroup {
            BankKataUI()
        }
    }
}
