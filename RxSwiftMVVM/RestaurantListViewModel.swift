//
//  RestaurantViewModel.swift
//  RxSwiftMVVM
//
//  Created by Sascha Sallès on 16/07/2021.
//

import Foundation
import RxSwift


final class RestaurantListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self .restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurants().map { 
            $0.map { RestaurantViewModel(restaurant: $0)}
        }
    }
}
