# Bank Kata

## Problem description

Create a simple bank application with the following features:

- Deposit into Account
- Withdraw from an Account
- Print a bank statement to the view

## Acceptance criteria

The statement should have transactions in the following format

| DATE       | AMOUNT   | BALANCE |
|------------|----------|---------|
| 10/05/2021 | 500.00   | 1400.00 |
| 02/05/2021 | -100.00  | 900.00  |
| 01/05/2021 | 1000.00  | 1000.00 |



## Starting point and constraints

1. Start with a class with the following structure

```swift
public protocol AccountProtocol {
    func deposit(amount: Int)
    func withdraw(amount: Int)
    func printStatement()
}
```

2. You are not allowed to add any other public method to this class
3. Use Strings and Integers for dates and amounts (keep it simple)