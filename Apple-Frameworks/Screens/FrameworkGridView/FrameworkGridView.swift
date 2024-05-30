//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/16/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var vm = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: vm.columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                vm.selectedFramework = framework
                            }
                        
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $vm.isShowingModalView) {
                FrameworkDetailView(
                    vm: FrameworkDetailViewModel(
                        framework: vm.selectedFramework!,
                        isShowingModalView: $vm.isShowingModalView
                    )
                )
            }
//            .navigationDestination(for: Framework.self){
//                framework in FrameworkDetailView(framework: framework)
//            }
            
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}



