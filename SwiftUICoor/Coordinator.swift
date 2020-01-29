//
//  Coordinator.swift
//  SwiftUICoor
//
//  Created by Erkam Kucet on 28.01.2020.
//  Copyright © 2020 Erkam. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import Combine

protocol CoordinatorProtocol: class {
    func start()
}

class MainCoordinator: CoordinatorProtocol {

    let navigationController: UINavigationController!
    var subscriber: AnyCancellable? = nil
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
//        let viewModel = HomeViewModel()
//        subscriber = viewModel.didSelectItem.sink(receiveValue: { (item) in
//            print(item)
//            self.showDetail(item: item)
//        })
        
        let viewModel = HomeViewModel()
        subscriber = viewModel.didSelectCity.sink(receiveValue: { (item) in
            print(item)
            self.showDetailView(item: item)
        })
        
        let view = HomeView().environmentObject(viewModel)
        let controller = UIHostingController(rootView: view)
        navigationController.viewControllers = [controller]
        app.window!.rootViewController = navigationController
    }
    
    func showDetailView(item: String){
        
        let viewModel = DetailViewModel(item: item)
        
        let view = DetailView().environmentObject(viewModel)
        let controller = UIHostingController(rootView: view)
        navigationController.pushViewController(controller, animated: true)
    }
}
