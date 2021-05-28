import SwiftUI
import BankKataKit
import BankKataUI

@main
struct BankKataApp: App {
    let bankKataKit: Account = Account()
    var body: some Scene {
        
        WindowGroup {
            BankKataUI()
        }
    }
}
