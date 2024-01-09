//
//  FramerowkGridView.swift
//  Apple-Framework
//
//  Created by Atik  on 21/12/23.
//

import SwiftUI

struct FramerowkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.frameworkGridColumns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailsView) {
                FrameworkDetailsView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailsView: $viewModel.isShowingDetailsView)
            }
        }
    }
}

#Preview {
    FramerowkGridView()
}
