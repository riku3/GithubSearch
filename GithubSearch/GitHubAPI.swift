//
//  GitHubAPI.swift
//  GithubSearch
//
//  Created by riku on 2021/04/24.
//

import Foundation

public final class GitHubAPI {
    public struct SearchRepositories: GitHubRequest {
        public var path: String {
            return "/search/repositories"
        }
        
        public var method: HTTPMethod {
            return .get
        }
        
        public var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
        
        public let keyword: String
        
        public typealias Response = SearchResponse<Repository>
    }
    
    public struct SearchUsers: GitHubRequest {
        public var path: String {
            return "/search/users"
        }
        
        public var method: HTTPMethod {
            return .get
        }
        
        public var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
        
        public let keyword: String
        
        public typealias Response = SearchResponse<Repository>
    }
}
