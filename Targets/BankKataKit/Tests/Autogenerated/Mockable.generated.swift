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

@testable import BankKataKit


class AccountMock: AccountProtocol {

    //MARK: - deposit

    var depositAmountCallsCount = 0
    var depositAmountCalled: Bool {
        return depositAmountCallsCount > 0
    }
    var depositAmountReceivedAmount: Int?
    var depositAmountReceivedInvocations: [Int] = []
    var depositAmountClosure: ((Int) -> Void)?
    func deposit(amount: Int) {
        depositAmountCallsCount += 1
        depositAmountReceivedAmount = amount
        depositAmountReceivedInvocations.append(amount)
        depositAmountClosure?(amount)
    }
    //MARK: - withdraw

    var withdrawAmountCallsCount = 0
    var withdrawAmountCalled: Bool {
        return withdrawAmountCallsCount > 0
    }
    var withdrawAmountReceivedAmount: Int?
    var withdrawAmountReceivedInvocations: [Int] = []
    var withdrawAmountClosure: ((Int) -> Void)?
    func withdraw(amount: Int) {
        withdrawAmountCallsCount += 1
        withdrawAmountReceivedAmount = amount
        withdrawAmountReceivedInvocations.append(amount)
        withdrawAmountClosure?(amount)
    }
    //MARK: - printStatement

    var printStatementCallsCount = 0
    var printStatementCalled: Bool {
        return printStatementCallsCount > 0
    }
    var printStatementClosure: (() -> Void)?
    func printStatement() {
        printStatementCallsCount += 1
        printStatementClosure?()
    }
}
class PrinterMock: PrinterProtocol {

    //MARK: - print

    var printCallsCount = 0
    var printCalled: Bool {
        return printCallsCount > 0
    }
    var printReceivedTransactions: [TransactionProtocol]?
    var printReceivedInvocations: [[TransactionProtocol]] = []
    var printClosure: (([TransactionProtocol]) -> Void)?
    func print(_ transactions: [TransactionProtocol]) {
        printCallsCount += 1
        printReceivedTransactions = transactions
        printReceivedInvocations.append(transactions)
        printClosure?(transactions)
    }
}
class TransactionMock: TransactionProtocol {

}
class TransactionsRepositoryMock: TransactionsRepositoryProtocol {

    //MARK: - addDeposit

    var addDepositAmountCallsCount = 0
    var addDepositAmountCalled: Bool {
        return addDepositAmountCallsCount > 0
    }
    var addDepositAmountReceivedAmount: Int?
    var addDepositAmountReceivedInvocations: [Int] = []
    var addDepositAmountClosure: ((Int) -> Void)?
    func addDeposit(amount: Int) {
        addDepositAmountCallsCount += 1
        addDepositAmountReceivedAmount = amount
        addDepositAmountReceivedInvocations.append(amount)
        addDepositAmountClosure?(amount)
    }
    //MARK: - addWithdraw

    var addWithdrawAmountCallsCount = 0
    var addWithdrawAmountCalled: Bool {
        return addWithdrawAmountCallsCount > 0
    }
    var addWithdrawAmountReceivedAmount: Int?
    var addWithdrawAmountReceivedInvocations: [Int] = []
    var addWithdrawAmountClosure: ((Int) -> Void)?
    func addWithdraw(amount: Int) {
        addWithdrawAmountCallsCount += 1
        addWithdrawAmountReceivedAmount = amount
        addWithdrawAmountReceivedInvocations.append(amount)
        addWithdrawAmountClosure?(amount)
    }
    //MARK: - allTransactions

    var allTransactionsCallsCount = 0
    var allTransactionsCalled: Bool {
        return allTransactionsCallsCount > 0
    }
    var allTransactionsReturnValue: [TransactionProtocol]!
    var allTransactionsClosure: (() -> [TransactionProtocol])?
    func allTransactions() -> [TransactionProtocol] {
        allTransactionsCallsCount += 1
        return allTransactionsClosure.map({ $0() }) ?? allTransactionsReturnValue
    }
}
