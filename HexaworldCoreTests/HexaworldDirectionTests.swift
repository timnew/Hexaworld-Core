//
//  HexaworldDirectionTests.swift
//  HexaworldCore
//
//  Created by Cyril Wei on 7/8/14.
//  Copyright (c) 2014 Cyril Wei. All rights reserved.
//

import XCTest
import HexaworldCore

class HexaworldDirectionTests: XCTestCase {
    let expectedColumns = 5
    let expectedRows = 3
    
    var world = Hexaworld(columns: 0, rows: 0)
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        world = Hexaworld(columns: expectedColumns, rows: expectedRows)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // Up
    func test_should_return_cell_c1r0_as_up_cell_of_c1r1() {
        let originalCellColumn = 1
        let originalCellRow = 1
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .Up]
        
        if let realCell = cell? {
            XCTAssertEqual(originalCellColumn, realCell.column)
            XCTAssertEqual(originalCellRow - 1, realCell.row)
        } else {
            XCTFail()
        }
    }
    
    func test_should_return_nil_as_up_cell_of_c1r0() {
        let originalCellColumn = 1
        let originalCellRow = 0
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .Up]
        
        if let realCell = cell? {
            XCTFail()
        }
    }
    
    // Right Up
    func test_should_return_cell_c2r0_as_right_up_cell_of_c1r1() {
        let originalCellColumn = 1
        let originalCellRow = 1
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .RightUp]
        
        if let realCell = cell? {
            XCTAssertEqual(originalCellColumn + 1, realCell.column)
            XCTAssertEqual(originalCellRow - 1, realCell.row)
        } else {
            XCTFail()
        }
    }
    
    func test_should_return_nil_as_right_up_cell_of_c1r0() {
        let originalCellColumn = 1
        let originalCellRow = 0
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .RightUp]
        
        if let realCell = cell? {
            XCTFail()
        }
    }
    
    // Right Down
    func test_should_return_cell_c2r1_as_right_down_cell_of_c1r1() {
        let originalCellColumn = 1
        let originalCellRow = 1
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .RightDown]
        
        if let realCell = cell? {
            XCTAssertEqual(originalCellColumn + 1, realCell.column)
            XCTAssertEqual(originalCellRow, realCell.row)
        } else {
            XCTFail()
        }
    }
    
    func test_should_return_nil_as_right_down_cell_of_c1r3() {
        let originalCellColumn = 1
        let originalCellRow = 3
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .RightDown]
        
        if let realCell = cell? {
            XCTFail()
        }
    }
    
    // Down
    func test_should_return_cell_c1r2_as_down_cell_of_c1r1() {
        let originalCellColumn = 1
        let originalCellRow = 1
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .Down]
        
        if let realCell = cell? {
            XCTAssertEqual(originalCellColumn, realCell.column)
            XCTAssertEqual(originalCellRow + 1, realCell.row)
        } else {
            XCTFail()
        }
    }
    
    func test_should_return_nil_as_down_cell_of_c1r3() {
        let originalCellColumn = 1
        let originalCellRow = 3
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .Down]
        
        if let realCell = cell? {
            XCTFail()
        }
    }
    
    // Left Down
    func test_should_return_cell_c0r1_as_left_down_cell_of_c1r1() {
        let originalCellColumn = 1
        let originalCellRow = 1
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .LeftDown]
        
        if let realCell = cell? {
            XCTAssertEqual(originalCellColumn - 1, realCell.column)
            XCTAssertEqual(originalCellRow, realCell.row)
        } else {
            XCTFail()
        }
    }
    
    func test_should_return_nil_as_left_down_cell_of_c1r3() {
        let originalCellColumn = 1
        let originalCellRow = 3
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .LeftDown]
        
        if let realCell = cell? {
            XCTFail()
        }
    }
    
    // Left Up
    func test_should_return_cell_c0r0_as_left_up_cell_of_c1r1() {
        let originalCellColumn = 1
        let originalCellRow = 1
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .LeftUp]
        
        if let realCell = cell? {
            XCTAssertEqual(originalCellColumn - 1, realCell.column)
            XCTAssertEqual(originalCellRow - 1, realCell.row)
        } else {
            XCTFail()
        }
    }
    
    func test_should_return_nil_as_left_up_cell_of_c1r0() {
        let originalCellColumn = 1
        let originalCellRow = 0
        let centerCell = world[originalCellColumn, originalCellRow]
        
        let cell = world[centerCell!, .LeftUp]
        
        if let realCell = cell? {
            XCTFail()
        }
    }
}