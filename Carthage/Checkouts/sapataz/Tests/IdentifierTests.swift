//
//  IdentitifierTests.swift
//  sapataz
//
//  Created by Jorge Moura on 17/05/2017.
//
//

@testable import sapataz
import XCTest

class IdentifierTests: XCTestCase {

    func testNotNullIdentifier() {
        let identifier = Identifier().generate()

        XCTAssertNotNil(identifier)
    }

    func testNotRepeatedIdentifier() {
        let firstIdentifier = Identifier().generate()
        let secondIdentifier = Identifier().generate()
        let thirdIdentifier = Identifier().generate()

        XCTAssertFalse(firstIdentifier == secondIdentifier)
        XCTAssertFalse(firstIdentifier == thirdIdentifier)
        XCTAssertFalse(secondIdentifier == thirdIdentifier)
    }
}
