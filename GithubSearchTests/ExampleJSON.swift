//
//  ExampleJSON.swift
//  GithubSearchTests
//
//  Created by riku on 2021/04/24.
//

import GithubSearch

extension User {
    static var exampleJSON: String {
        return """
            {
                "login": "apple",
                "id": 10639145
            }
            """
    }
}

extension Repository {
    static var exampleJSON: String {
        return """
        {
            "id": 44838949,
            "name": "swift",
            "full_name": "apple/swift",
            "owner": {
                "login": "apple",
                "id": 10639145
            }
        }
        """
    }
}

extension SearchResponse {
    static var exampleJSON: String {
        return """
        {
            "total_count": 141722,
            "items": [
                {
                    "id": 44838949,
                    "name": "swift",
                    "full_name": "apple/swift",
                    "owner": {
                        "id": 1063914,
                        "login": "apple"
                    }
                },
                {
                    "id": 790019,
                    "name": "swift",
                    "full_name": "openstack/swift",
                    "owner": {
                        "id": 324574,
                        "login": "openstack"
                    }
                },
                {
                    "id": 2082291,
                    "name": "SwiftGuide",
                    "full_name": "ipader/swift",
                    "owner": {
                        "id": 373016,
                        "login": "ipader"
                    }
                }
            ]
        }
        """
    }
}

extension GitHubAPIError {
    static var exampleJSON: String {
        return """
        {
            "message": "Validation Failed",
            "errors": [
                {
                "resource": "Search",
                "field": "q",
                "code": "missing"
                }
            ],
            "documentation_url": "https://developer.github.com/v3/search"
        }
        """
    }
}
