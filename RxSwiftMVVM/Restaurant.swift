//
//  Restaurant.swift
//  RxSwiftMVVM
//
//  Created by Sascha Sallès on 16/07/2021.
//

import Foundation


struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}


enum Cuisine: String, Decodable {
    case European
    case Mexican
    case Swedish
    case French
    case Asian
    case American
    case Spanish
}
