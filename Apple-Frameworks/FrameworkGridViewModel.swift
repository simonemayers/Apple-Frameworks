//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/21/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
}
