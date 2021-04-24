//
//  GitHubAPIError.swift
//  GithubSearch
//
//  Created by riku on 2021/04/24.
//

public struct GitHubAPIError: Decodable, Error {
    public struct error: Decodable {
        public var resource: String
        public var field: String
        public var code: String
    }
    
    public var message: String
    public var errors: [error]
}
