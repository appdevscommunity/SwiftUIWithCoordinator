//
//  DetailView.swift
//  SwiftUICoor
//
//  Created by Erkam Kucet on 28.01.2020.
//  Copyright © 2020 Erkam. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var viewModel: DetailViewModel
    
    var body: some View {
        Text(self.viewModel.item)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

class DetailViewModel: ObservableObject {
    
    var item: String
    
    init(item: String) {
        self.item = item
    }
}
