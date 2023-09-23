//
//  CICDAppTests.swift
//  CICDAppTests
//
//  Created by Kimi on 23/9/23.
//

import XCTest

@testable import CICDApp

final class CICDAppTests: XCTestCase {

    func testFrom() throws {
        XCTAssertEqual(Bit.from(false), Bit.zero)
        XCTAssertEqual(Bit.from(true), Bit.one)
    }
    
    func testInvert() throws {
        XCTAssertEqual(Bit.zero.invert(), Bit.one)
        XCTAssertEqual(Bit.one.invert(), Bit.zero)
    }
    
    func testCustomString() throws {
        XCTAssertEqual(Bit.zero.description, "0")
        XCTAssertEqual(Bit.one.description, "1")
    }
}
