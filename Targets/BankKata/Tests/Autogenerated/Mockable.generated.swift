// Generated using Sourcery 1.4.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

@testable import BankKataUI

class ConsoleMock: Console {

    //MARK: - print

    var printCallsCount = 0
    var printCalled: Bool {
        return printCallsCount > 0
    }
    var printReceivedLine: String?
    var printReceivedInvocations: [String] = []
    var printClosure: ((String) -> Void)?
    func print(_ line: String) {
        printCallsCount += 1
        printReceivedLine = line
        printReceivedInvocations.append(line)
        printClosure?(line)
    }
}
