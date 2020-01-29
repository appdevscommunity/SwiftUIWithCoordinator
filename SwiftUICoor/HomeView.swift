//
//  HomeView.swift
//  SwiftUICoor
//
//  Created by Erkam Kucet on 28.01.2020.
//  Copyright © 2020 Erkam. All rights reserved.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var viewModel: HomeViewModel
    
    var body: some View {
        ZStack {
            List (self.viewModel.getItems(), id: \.self) { item in
                Button(action: {self.viewModel.selectCity(city: item)},
                label: {Text(item)})
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

import Combine

class HomeViewModel: ObservableObject {
    
    var didSelectCity = PassthroughSubject<String,Never>()
    
    func getItems() -> [String] {
        return ["Ankara", "İstanbul", "İzmir", "Çorum", "Elazığ"]
    }
    
    func selectCity(city: String) {
        didSelectCity.send(city)
    }
}
