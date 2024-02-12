//
//  SwiftuiConcurrencyUITests.swift
//  SwiftuiConcurrencyUITests
//
//  Created by Renan Diniz on 12/02/24.
//

import XCTest

final class SwiftuiConcurrencyUITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
    }
    
    func testNavigationAndDataFetch() {
        let app = XCUIApplication()
        
        // Navigate to the settings or where the fetch button is located.
        // This assumes you have a button labeled "Fetch Data" in your ContentView.
        app.buttons["Fetch Data"].tap()
        
        // Add a delay to wait for the fetch to complete. This is not ideal but might be necessary for UI tests.
        sleep(2) // Be cautious using sleep(), it's better to wait for elements to appear.
        
        // Check for existence of an element that indicates data has been fetched.
        // For example, if fetching data changes the text to "Fetched Data", check for that text.
        let fetchedDataText = app.staticTexts["Fetched Data"]
        XCTAssertTrue(fetchedDataText.exists, "The data fetch did not complete as expected.")
    }
}
