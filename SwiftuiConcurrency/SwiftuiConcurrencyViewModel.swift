//
//  SwiftuiConcurrencyViewModel.swift
//  SwiftuiConcurrency
//
//  Created by Renan Diniz on 12/02/24.
//

import SwiftUI

// ViewModel that fetches data asynchronously
class SwiftuiConcurrencyViewModel: ObservableObject {
    @Published var data: MyModel?
    @Published var isLoading = false
    
    func fetchData() async {
        isLoading = true
        // Simulate a network delay
        try? await Task.sleep(nanoseconds: 2_000_000_000) // 2 seconds
        // Update the data on the main thread after fetching it
        await MainActor.run {
            self.data = MyModel(title: "Fetched Data")
            self.isLoading = false
        }
    }
}
