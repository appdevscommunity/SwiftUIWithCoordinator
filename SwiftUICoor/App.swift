//
//  App.swift
//  SwiftUICoor
//
//  Created by Erkam Kucet on 28.01.2020.
//  Copyright © 2020 Erkam. All rights reserved.
//

import Foundation
import UIKit

let app = App(window: nil)

class App {
    
    var window: UIWindow?
    var container: ContainerProtocol? {
        didSet{
            print("did set container")
            self.container?.coordinator.start()
        }
    }
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start(window: UIWindow) {
        
        self.window = window
        
        window.rootViewController = SplashBuilder.make()
        
        ContainerBuilder.make { (container) in
            self.container = container
        }
    }
}
