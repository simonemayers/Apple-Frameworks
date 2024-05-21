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
        NavigationView {
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                                
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .fullScreenCover(isPresented: $viewModel.isShowingModalView){
                FrameworkDetailView(
                    framework: viewModel.selectedFramework
                    ?? MockData.sampleFramework,
                    isShowingModalView: $viewModel.isShowingModalView
                )
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}



