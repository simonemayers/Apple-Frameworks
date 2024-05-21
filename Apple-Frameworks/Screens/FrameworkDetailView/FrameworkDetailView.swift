//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/16/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingModalView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
            VStack {
                XDismissButton(isShowingModalView: $isShowingModalView)
     
                Spacer()
                
                FrameworkTitleView(framework: framework)
                Text(framework.description)
                    .padding()
                    .font(.body)
                
                Spacer()
                
                Button{
                    isShowingSafariView = true
                } label: {
                    AFButton(title: "Learn More")
                }
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com")!))
            })
        }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingModalView: .constant(false))
}



