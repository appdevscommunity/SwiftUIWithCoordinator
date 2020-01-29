//
//  ContainerProtocol.swift
//  SwiftUICoor
//
//  Created by Erkam Kucet on 28.01.2020.
//  Copyright © 2020 Erkam. All rights reserved.
//

import Foundation
import UIKit

protocol ContainerProtocol {
    var coordinator: CoordinatorProtocol { get }
}

class MainContainer: ContainerProtocol {
    var coordinator: CoordinatorProtocol = MainCoordinator(navigationController: UINavigationController())
}

class ContainerBuilder {
    
    static func make(completion: @escaping (ContainerProtocol) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion(MainContainer())
        }
    }
}
