//
//  Z.swift
//  GithubSearchTests
//
//  Created by riku on 2021/04/24.
//

import Foundation
import XCTest
import GithubSearch

class SearchResponseTests: XCTestCase {
    func testDecodeRepositories() throws {
        let jsonDecoder = JSONDecoder()
        let data = SearchResponse<Repository>.exampleJSON.data(using: .utf8)!
        let response = try jsonDecoder.decode(SearchResponse<Repository>.self, from: data)
        
        XCTAssertEqual(response.totalCount, 141722)
        XCTAssertEqual(response.items.count, 3)
        
        let firstRespository = response.items.first
        
        XCTAssertEqual(firstRespository?.name, "swift")
        XCTAssertEqual(firstRespository?.fullName, "apple/swift")
    }
}
