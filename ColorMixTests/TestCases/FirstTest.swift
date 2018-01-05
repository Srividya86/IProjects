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
import FBSnapshotTestCase

extension FBSnapshotTestCase {
    
    func verifyView(identifier element: String) {
        FBSnapshotVerifyView(currentVC.view, identifier: "\(element)")
    }
}





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
    
    func testBlueCellWithLabel() {
        //taping on blueswitch
        tester().tapView(withAccessibilityIdentifier: FirstScreen.blueSwitch.rawValue)
        
        //Verifying blueswitch availability
        XCTAssertNotNil(tester().waitForView(withAccessibilityIdentifier: FirstScreen.blueSlider.rawValue), "Slider isnot showing up")
        tester().waitForAnimationsToFinish()
        // to make a hard wait
        sleep(5)
        }
    
    //Reseting UI then sliding green slider
    func testGreenSlider() {
        tester().tapView(withAccessibilityIdentifier: FirstScreen.resetButton.rawValue)
        tester().tapView(withAccessibilityIdentifier: FirstScreen.greenSwitch.rawValue)
        tester().setValue(0.9, forSliderWithAccessibilityIdentifier: FirstScreen.greenSlider.rawValue)
    }
    
}
