//
//  MoviesResponseModel.swift
//  MovieTicketBookingApp
//
//  Created by Lê Đình Linh on 17/08/2023.
//

import Foundation

struct MoviesResponseModel : Codable {
    let message: String?
    let isSuccess: Bool?
    let data: Item?
}

struct Item: Codable {
    let id: Int?
    let title: String?
    let year: Int?
    let categories: [Categories]?
    let thumbnail: String?
    let rating: Float?
    let duration: Int?
    let directors: [Directors]?
    let writers: [Writers]?
    let pgs: [Age]?
    let trailers: [Trailers]?
    let producers: [Producers]?
    let description: String?
}

struct Categories: Codable {
    let id: Int?
    let name: String?
    
}

struct Directors : Codable {
    let id: Int?
    let fullName: String?
}

struct Writers : Codable {
    let id : Int?
    let fullName : String?
}

struct Age: Codable {
    let id : Int?
    let name : String?
}

struct Trailers: Codable{
    let id: Int?
    let url: String?
    let thumbnail: String?
}

struct Producers: Codable{
    let id: Int?
    let name: String?
}


typealias listItem =  [MoviesResponseModel]
