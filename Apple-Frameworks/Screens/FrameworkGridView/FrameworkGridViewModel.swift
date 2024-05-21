//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/21/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
