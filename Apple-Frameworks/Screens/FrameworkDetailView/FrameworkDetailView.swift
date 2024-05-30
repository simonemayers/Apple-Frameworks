//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/16/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var vm: FrameworkDetailViewModel
    
    var body: some View {
            VStack {
                XDismissButton(isShowingModalView: $vm.isShowingModalView.wrappedValue)
                
                Spacer()
                
                FrameworkTitleView(framework: vm.framework)
                
                Text(vm.framework.description)
                    .padding()
                    .font(.body)
                
                Spacer()
                
                Button{
                    vm.isShowingSafariView = true
                } label: {
                    AFButton(title: "Learn More")
                }
            }
            .sheet(isPresented: $vm.isShowingSafariView, content: {
                SafariView(url: (URL(string: vm.framework.urlString) ?? URL(string: "www.apple.com")!))
            })
        }
}

#Preview {
    FrameworkDetailView(vm: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingModalView: .constant(false)))
}




