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
