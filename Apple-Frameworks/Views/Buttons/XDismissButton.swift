//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Owner on 5/21/24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingModalView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                isShowingModalView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingModalView: .constant(false))
}
