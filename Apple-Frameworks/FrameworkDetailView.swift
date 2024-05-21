//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/16/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    var body: some View {
            VStack {
                HStack{
                    Spacer()
                    Button {
                        
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding()
     
                Spacer()
                
                FrameTitleView(framework: framework)
                Text(framework.description)
                    .padding()
                    .font(.body)
                
                Spacer()
                
                Button{
                
                } label: {
                    AFButton(title: "Learn More")
                }
            }
        }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}




