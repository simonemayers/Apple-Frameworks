//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/30/24.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    var isShowingModalView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingModalView: Binding<Bool>) {
        self.framework = framework
        self.isShowingModalView = isShowingModalView
    }
}
