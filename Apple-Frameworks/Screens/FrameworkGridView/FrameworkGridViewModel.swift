//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/21/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingModalView = true }
    }
    
    @Published var isShowingModalView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
