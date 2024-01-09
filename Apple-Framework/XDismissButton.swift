//
//  XDismissButton.swift
//  Apple-Framework
//
//  Created by Atik  on 8/1/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailsView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button(
                action: {
                    isShowingDetailsView = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            )
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailsView: .constant(true))
}
