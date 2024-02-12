//
//  SwiftuiConcurrencyViewModelSpec.swift
//  SwiftuiConcurrencyTests
//
//  Created by Renan Diniz on 12/02/24.
//

import XCTest
@testable import SwiftuiConcurrency

final class SwiftuiConcurrencyViewModelSpec: XCTestCase {
    
    var viewModel: SwiftuiConcurrencyViewModel!
    
    override func setUpWithError() throws {
        viewModel = SwiftuiConcurrencyViewModel()
    }
    
    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    func testFetchData() async throws {
        XCTAssertNil(viewModel.data, "Data should be nil before fetching")
        
        await viewModel.fetchData()
        
        XCTAssertNotNil(viewModel.data, "Data should not be nil after fetching")
        XCTAssertEqual(viewModel.data?.title, "Fetched Data", "The fetched data title is incorrect")
    }
    
}
