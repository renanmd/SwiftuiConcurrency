//
//  SwiftuiConcurrencyUITestsLaunchTests.swift
//  SwiftuiConcurrencyUITests
//
//  Created by Renan Diniz on 12/02/24.
//

import XCTest

final class SwiftuiConcurrencyUITestsLaunchTests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launchArguments = ["-UITesting"]
        app.launch()
    }
    
    func testAppLaunchInitialState() {
        let app = XCUIApplication()
        
        // Check for the "Fetch Data" button's existence.
        let fetchDataButton = app.buttons["Fetch Data"]
        XCTAssertTrue(fetchDataButton.exists, "The 'Fetch Data' button should be visible upon launch")
    }
}
