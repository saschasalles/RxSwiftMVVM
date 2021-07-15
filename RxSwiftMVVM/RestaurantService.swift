//
//  RestaurantService.swift
//  RxSwiftMVVM
//
//  Created by Sascha Sallès on 16/07/2021.
//

import Foundation
import RxSwift

enum FileReadError: Error {
    case NotFound
    case BadFormat
    
}

protocol RestaurantServiceProtocol {
    func fetchRestaurants() -> Observable<[Restaurant]>
}

class RestaurantService: RestaurantServiceProtocol {
    
    func fetchRestaurants() -> Observable<[Restaurant]> {
        return Observable.create { observer -> Disposable in
            guard let path = Bundle.main.path(forResource: "restaurants", ofType: "json")
            else {
                observer.onError(FileReadError.BadFormat)
                return Disposables.create{}
            }
            
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                observer.onNext(restaurants)
                
            } catch (let error) {
                observer.onError(error)
            }
            
            return Disposables.create {
                
            }
        }
    }
}
