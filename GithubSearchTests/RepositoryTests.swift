//
//  RepositoryTests.swift
//  GithubSearchTests
//
//  Created by riku on 2021/04/24.
//

import Foundation
import XCTest
import GithubSearch

class RepositoryTests: XCTestCase {
    
    func testDecode() throws {
        let jsonDecoder = JSONDecoder()
        let data = Repository.exampleJSON.data(using: .utf8)!
        let repository = try jsonDecoder.decode(Repository.self, from: data)
        XCTAssertEqual(repository.id, 44838949)
        XCTAssertEqual(repository.name, "swift")
        XCTAssertEqual(repository.fullName, "apple/swift")
        XCTAssertEqual(repository.owner.id, 10639145)
    }
}
