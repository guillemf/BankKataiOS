//
//  DateProviderTests.swift
//  BankKataKitTests
//
//  Created by Guillermo Fernandez on 31/05/2021.
//  Copyright © 2021 com.cokaido. All rights reserved.
//

import XCTest

@testable import BankKataKit

class DateProviderTests: XCTestCase {

    func test_should_return_current_date_formated_as_dd_MM_yyyy() {
        let dateProvider = TestableDateProvider()
        
        let date = dateProvider.currentDateAsString()
        
        XCTAssertEqual("31/05/2021", date)
    }

}

private class TestableDateProvider: DateProvider {
    override func TodayDate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"

        return dateFormatter.date(from: "31/05/2021")!
    }
}
