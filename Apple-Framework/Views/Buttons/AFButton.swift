//
//  AFButton.swift
//  Apple-Framework
//
//  Created by Atik  on 27/12/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(.orange)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
