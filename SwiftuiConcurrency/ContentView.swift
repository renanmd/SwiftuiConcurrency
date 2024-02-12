//
//  ContentView.swift
//  SwiftuiConcurrency
//
//  Created by Renan Diniz on 12/02/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = SwiftuiConcurrencyViewModel()
    
    var body: some View {
        VStack {
            if let data = viewModel.data {
                Text(data.title)
            } else if viewModel.isLoading {
                ProgressView()
            } else {
                Button("Fetch Data") {
                    Task {
                        await viewModel.fetchData()
                    }
                }
            }
        }
    }
}
