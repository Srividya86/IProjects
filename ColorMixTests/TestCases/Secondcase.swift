//
//  Secondcase.swift
//  ColorMixTests
//
//  Created by Attuluri, Srividya (CONT) on 11/13/17.
//  Copyright © 2017 Attuluri, Srividya. All rights reserved.
//

import XCTest
import KIF
import UIKit


class Secondcase: KIFTestCase {
    
    override func setUp() {
        super.setUp()
        KIFEnableAccessibility()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    
    
    func testExample(with tester: KIFUITestActor) {
//        tester.waitForView(withAccessibilityIdentifier: FirstScreen.blueSwitch.rawValue)
        tester.tapView(withAccessibilityLabel: FirstScreen.blueSwitch.rawValue)
        sleep(15)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   
    }
    

