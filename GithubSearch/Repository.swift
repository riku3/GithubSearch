//
//  Repository.swift
//  GithubSearch
//
//  Created by riku on 2021/04/24.
//

public struct Repository: Decodable {
    public var id: Int
    public var name: String
    public var fullName: String
    public var owner: User
    
    public enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
