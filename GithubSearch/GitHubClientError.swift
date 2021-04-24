//
//  GitHubClientError.swift
//  GithubSearch
//
//  Created by riku on 2021/04/24.
//

public enum GitHubClientError: Error {
    case connectionError(Error)
    case responseParseError(Error)
    case apiError(GitHubAPIError)
}
