import Foundation

///sourcery: mockable
public protocol DateProviderProtocol {
    func currentDateAsString() -> String
}

public class DateProvider: DateProviderProtocol {
    public func currentDateAsString() -> String {
        let today = TodayDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        return dateFormatter.string(from: today)
    }
    
    internal func TodayDate() -> Date {
        return Date()
    }
}
