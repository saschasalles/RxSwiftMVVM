//
//  AppCoordinator.swift
//  RxSwiftMVVM
//
//  Created by Sascha Sallès on 16/07/2021.
//

import Foundation
import UIKit

class AppCoordinator {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let vc = ViewController.instanciate(viewModel: RestaurantListViewModel())
        let navController = UINavigationController(rootViewController: vc)
        
        window.rootViewController = navController
        window.makeKeyAndVisible()
    }
}
