//
//  FirstTest.swift
//  ColorMixTests
//
//  Created by Attuluri, Srividya (CONT) on 11/13/17.
//  Copyright © 2017 Attuluri, Srividya. All rights reserved.
//

import Foundation
import XCTest
import UIKit
import KIF




class SimpleSwiftTest: KIFTestCase {
    
    override func setUp() {
        super.setUp()
        KIFEnableAccessibility()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testGreenCellWithIdentifier(with tester: KIFUITestActor) {
//        tester.waitForView(withAccessabilityIdentifier:FirstScreen.blueSwitch.rawValue)
//        
//    }
    
    func testBlueCellWithLabel() {
 tester().tapView(withAccessibilityIdentifier: FirstScreen.blueSwitch.rawValue)
        XCTAssertNotNil(tester().waitForView(withAccessibilityIdentifier: FirstScreen.blueSlider.rawValue), "Slider isnot showing up")
        
        XCTAssertNotNil(tester().waitForView(withAccessibilityIdentifier: "test"), "Test Slider isnot showing up")
        
        tester().waitForAnimationsToFinish()
        sleep(5)
        }
    
    func testGreenSlider() {
        tester().tapView(withAccessibilityIdentifier: FirstScreen.resetButton.rawValue)
        tester().tapView(withAccessibilityIdentifier: FirstScreen.greenSwitch.rawValue)
//        tester().setValue(0.5, forSliderWithAccessibilityIdentifier: FirstScreen.greenSlider.rawValue)
//        XCTAssertNotNil(tester().waitForView(withAccessibilityIdentifier: FirstScreen.greenSlider.rawValue), "Green Slider view is not displayed")
        tester().tapView(withAccessibilityIdentifier: FirstScreen.greenSlider.rawValue)
        tester().tapStatusBar()
    }
    
    
}
