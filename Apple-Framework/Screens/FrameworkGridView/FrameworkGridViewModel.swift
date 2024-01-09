//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Atik  on 27/12/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }
    
    @Published var isShowingDetailsView = false
    
    let frameworkGridColumns: [GridItem] = [ GridItem(.flexible()),
                                             GridItem(.flexible()),
                                             GridItem(.flexible()) ]
}
