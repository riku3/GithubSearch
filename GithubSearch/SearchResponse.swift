//
//  SearchResponse.swift
//  GithubSearch
//
//  Created by riku on 2021/04/24.
//

public struct SearchResponse<Item: Decodable>: Decodable {
    public var totalCount: Int
    public var items: [Item]
    
    public enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
