import SwiftUI
import BankKataKit

/// sourcery: mockable
public protocol Console {
    func print(_ line: String)
}

public struct BankKataUI: View {
    @State private var statements: [String]
    
    public init(_ statements: [String] = [String]()) {
        self.statements = statements
    }
    
    public var body: some View {
        VStack {
            Text("Bank Kata")
                .font(.title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray)
            VStack(alignment: .center, spacing: nil) {
                ForEach(statements, id: \.self) { statement in
                    Text(statement).frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                }
            }
            .background(Color.black)
            Spacer()
        }
    }
    
    public func printLine(_ line: String) {
        self.statements.append(line)
    }
}

let statements = [
"| DATE       | AMOUNT   | BALANCE |",
"|------------|----------|---------|",
"| 10/05/2021 | 500.00   | 1400.00 |",
"| 02/05/2021 | -100.00  | 900.00  |",
"| 01/05/2021 | 1000.00  | 1000.00 |",
]

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        BankKataUI(statements)
    }
}
