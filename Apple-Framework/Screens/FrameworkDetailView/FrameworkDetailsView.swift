//
//  FrameworkDetailsView.swift
//  Apple-Framework
//
//  Created by Atik  on 27/12/23.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack {
            
            XDismissButton(isShowingDetailsView: $isShowingDetailsView)
            
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button(
                  action: {
                      isShowingSafariView = true
                  }, label: {
                      AFButton(title: "Learn More")
                  })
            .fullScreenCover(isPresented: $isShowingSafariView) {
                SafariView(url: (URL(string: framework.urlString) ?? URL(string: "https://www.apple.com"))!)
            }
        }
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework, isShowingDetailsView: .constant(false))
}
