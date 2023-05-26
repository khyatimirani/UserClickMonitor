//
//  ClickMonitorTest.swift
//  UserClickMonitor_Tests
//
//  Created by Khyati Mirani on 26/05/23.
//  Copyright © 2023 khyati71. All rights reserved.
//

import XCTest
@testable import UserClickMonitor

class ClickMonitorTest: XCTestCase {

   
    var clickMonitor: ClickMonitor?

    func testSaveClickAction() {
        let isAdded = clickMonitor?.addEventToSystem(map: ["key": "2"]) ?? false
        XCTAssertTrue(isAdded)
        let isNotAdded = clickMonitor?.addEventToSystem(map: [:]) ?? false
        XCTAssertFalse(isNotAdded)
    }
    
    override func setUp() {
        clickMonitor = ClickMonitor()
    }
    
    func setUpClickEventData() {
        clickMonitor?.addEventToSystem(map: ["key": "2"])
        clickMonitor?.addEventToSystem(map: ["key": "3"])
        clickMonitor?.addEventToSystem(map: ["key": "1"])
        clickMonitor?.addEventToSystem(map: ["key1": "1"])
        clickMonitor?.addEventToSystem(map: ["key1": "2"])

    }
    
    func testGetAggrgatedClickCounttwentySeconds() {
        setUpClickEventData()
        let resultsForKey:[Float] = [3.0, 3.0, 3.0]
        XCTAssertEqual(resultsForKey, clickMonitor?.getAggregatedAnswer(key: "key"))
        let resultsForKey1:[Float] = [2.0, 2.0, 2.0]
        XCTAssertEqual(resultsForKey1, clickMonitor?.getAggregatedAnswer(key: "key1"))
    }

}
