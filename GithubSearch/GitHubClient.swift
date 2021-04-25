//
//  GitHubClient.swift
//  GithubSearch
//
//  Created by riku on 2021/04/24.
//

import Foundation

public class GitHubClient {
    private let httpClient: HTTPClient
    
    public init(httpclient: HTTPClient) {
        self.httpClient = httpclient
    }
    
    public func send<Requst: GitHubRequest>(
        request: Requst, completion: @escaping (Result<Requst.Response, GitHubClientError>) -> Void) {
        let urlRequest = request.buildURLRequest()
        httpClient.sendRequest(urlRequest) { result in
            switch result {
            case .success(let data, let urlResponse):
                do {
                    let response = try request.response(from: data, urlResponse: urlResponse)
                    completion(Result.success(response))
                } catch let error as GitHubAPIError {
                    completion(Result.failure(.apiError(error)))
                } catch {
                    completion(Result.failure(.responseParseError(error)))
                }
            case .failure(let error):
                completion(.failure(.connectionError(error)))
            }
        }
    }
}
