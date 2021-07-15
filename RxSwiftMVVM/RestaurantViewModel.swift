//
//  RestaurantViewModel.swift
//  RxSwiftMVVM
//
//  Created by Sascha Sallès on 16/07/2021.
//

import Foundation

struct RestaurantViewModel {
    private let restaurant: Restaurant
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
    
    var displayedText: String {
        return "\(restaurant.name) - \(self.restaurant.cuisine.rawValue)"
    }
}
