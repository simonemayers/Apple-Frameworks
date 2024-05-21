//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/16/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                        
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self){
                framework in FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}



