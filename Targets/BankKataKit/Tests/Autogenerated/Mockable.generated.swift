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



class StatementMock: StatementProtocol {
    var date: String {
        get { return underlyingDate }
        set(value) { underlyingDate = value }
    }
    var underlyingDate: String!
    var amount: String {
        get { return underlyingAmount }
        set(value) { underlyingAmount = value }
    }
    var underlyingAmount: String!
    var balance: String {
        get { return underlyingBalance }
        set(value) { underlyingBalance = value }
    }
    var underlyingBalance: String!

}
