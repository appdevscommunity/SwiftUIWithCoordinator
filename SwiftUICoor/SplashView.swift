//
//  SplashView.swift
//  SwiftUICoor
//
//  Created by Erkam Kucet on 28.01.2020.
//  Copyright © 2020 Erkam. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Text("Hello from splash view")
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

class SplashBuilder {
    static func make() -> UIHostingController<SplashView> {
        let splashView = SplashView()
        let controller = UIHostingController(rootView: splashView)
        
        return controller
    }
}
