//
//  ViewController.swift
//  GithubSearch
//
//  Created by riku on 2021/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        main()
        
        let timeoutInterval: TimeInterval = 60
        Thread.sleep(forTimeInterval: timeoutInterval)
        print("Connection timeout")
    }

    private func main() {
        let keyword = "swift"
        
        let client = GitHubClient(httpclient: URLSession.shared)
        let request = GitHubAPI.SearchRepositories(keyword: keyword)
        
        client.send(request: request) { result in
            switch result {
            case .success(let response):
                for item in response.items {
                    print(item.owner.login + "/" + item.name)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}

