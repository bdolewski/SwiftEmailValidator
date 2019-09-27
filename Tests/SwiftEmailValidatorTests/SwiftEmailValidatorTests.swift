import XCTest
@testable import SwiftEmailValidator

final class SwiftEmailValidatorTests: XCTestCase {
    func testValidEmails() {
        XCTAssertTrue(EmailValidator.isValid(email: "john.appleseed@apple.com"))
        XCTAssertTrue(EmailValidator.isValid(email: "john_appleseed@apple.com"))
        
        XCTAssertTrue(EmailValidator.isValid(email: "JOHN_APPLESEED@apple.com"))
        XCTAssertTrue(EmailValidator.isValid(email: "john_appleseed@APPLE.COM"))
    }
    
    func testInvalidEmails() {
        // empty e-mail
        XCTAssertFalse(EmailValidator.isValid(email: ""))
        XCTAssertFalse(EmailValidator.isValid(email: nil))
        
        // bad apple
        XCTAssertFalse(EmailValidator.isValid(email: "john@apple..com"))
        XCTAssertFalse(EmailValidator.isValid(email: "john@apple,com"))
        XCTAssertFalse(EmailValidator.isValid(email: "john@apple?com"))
        XCTAssertFalse(EmailValidator.isValid(email: "@"))
        XCTAssertFalse(EmailValidator.isValid(email: "john"))
        
        // bad johnnames
        XCTAssertFalse(EmailValidator.isValid(email: "@apple.com"))
        XCTAssertFalse(EmailValidator.isValid(email: "@@apple.com"))
        XCTAssertFalse(EmailValidator.isValid(email: "some john@apple.com"))
        XCTAssertFalse(EmailValidator.isValid(email: "some,john@apple.com"))
        XCTAssertFalse(EmailValidator.isValid(email: "john;@apple.com"))
        XCTAssertFalse(EmailValidator.isValid(email: "john<>@apple.com"))
        XCTAssertFalse(EmailValidator.isValid(email: "john..@apple.com"))
        XCTAssertFalse(EmailValidator.isValid(email: "1234567890123456789012345678901234567890123456789012345678901234+x@@apple.com"))
    }
    
    static var allTests = [
        ("testValidEmails", testValidEmails),
        ("testInvalidEmails", testInvalidEmails)
    ]
}
