//
//  APIHandler.swift
//  MovieTicketBookingApp
//
//  Created by Lê Đình Linh on 16/08/2023.
//

import Foundation
import Alamofire

class APIHander {
    let movie_Data_URL = "http://146.190.97.170:9923/movies/1"
    
    func getMovies(completion: @escaping (listItem) -> ()) {
        AF.request(movie_Data_URL, method: .get).responseDecodable(of: listItem.self) { (response) in
            
            switch response.result {
            case .success(let moviesResponse):
                print("API response: \(moviesResponse)")
                
                if let moviesResponse = response.value {
                    completion(moviesResponse)
                    print("API response: \(moviesResponse)")
                }
            case .failure(let error):
                print("API error: \(error.localizedDescription)")
            }
        }
    }

    
    
}
