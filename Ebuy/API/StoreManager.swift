//
//  StoreManager.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 14.07.21.
//

import Foundation

protocol StoreManagerProtocol: AnyObject {
    func fetchNewsList(completion: @escaping ((Result<[Store], Error>) -> Void))
}

class StoreManager: StoreManagerProtocol {
    func fetchNewsList(completion: @escaping ((Result<[Store], Error>) -> Void)) {
        let url = "https://fakestoreapi.com/products"
        NetworkManager.shared.get(url: url) { (result: Result<StoreResponse, Error>) in
            switch result {
            case .success(let response):
                completion(.success(response.itemList))
            case .failure(let err):
                completion(.failure(err))
            }
        }
    }
}


