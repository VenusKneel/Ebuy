//
//  UsersManager.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 14.07.21.
//

import Foundation

protocol UsersManagerProtocol: AnyObject {
    func fetchNewsList(completion: @escaping ((Result<[Users], Error>) -> Void))
}

class UsersManager: UsersManagerProtocol {
    func fetchNewsList(completion: @escaping ((Result<[Users], Error>) -> Void)) {
        let url = "https://fakestoreapi.com/users"
        NetworkManager.shared.get(url: url) { (result: Result<UsersResponse, Error>) in
            switch result {
            case .success(let response):
                completion(.success(response.userList))
            case .failure(let err):
                completion(.failure(err))
            }
        }
    }
}
