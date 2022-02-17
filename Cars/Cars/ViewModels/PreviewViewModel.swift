//
//  PreviewViewModel.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation

protocol PreviewDependency {
    func imageUrls() -> [String]
}

class PreviewViewModel {
    var previewDependency: PreviewDependency
    
    init(previewDependency: PreviewDependency) {
        self.previewDependency = previewDependency
    }
    
    var displayedIndex: Int = 0
    
    func firstImageUrl() -> String? {
        if self.previewDependency.imageUrls().count > 0 {
            return self.previewDependency.imageUrls().first
        }
    
        return nil
    }
    
    func nextImageUrl() -> String? {
        if self.previewDependency.imageUrls().count - 1 > displayedIndex {
            displayedIndex = displayedIndex + 1
            return self.previewDependency.imageUrls()[displayedIndex]
        }
        
        return nil
    }

    func previousImageUrl() -> String? {
        if displayedIndex > 0 {
            displayedIndex = displayedIndex - 1
            return self.previewDependency.imageUrls()[displayedIndex]
        }
        
        return nil
    }
}
