//
//  AnimoTests.swift
//  AnimoTests
//
//  Created by Dambar Bista on 10/31/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import XCTest
@testable import Animo

class AnimoTests: XCTestCase {
    
    
    func testCellIdentifiers() {
        
        let animalCell = CellIdentifiers.animalCellIdentifier
        XCTAssertEqual(animalCell, "animalViewCell")
        
        let vehicleCell = CellIdentifiers.vechileCellIdentifier
        XCTAssertEqual(vehicleCell, "vehicleViewCell")
        
        let natureCell = CellIdentifiers.natureCellIdentifier
        XCTAssertEqual(natureCell, "natureCell")
        
        let educationCell = CellIdentifiers.educationCellIdentifier
        XCTAssertEqual(educationCell, "educationCell")
        
        let fruitsCell = CellIdentifiers.fruitsCellIdentifier
        XCTAssertEqual(fruitsCell, "fruitsCell")
        
        let vegetablesCell = CellIdentifiers.vegetablesCellIdentifier
        XCTAssertEqual(vegetablesCell, "vegetablesCell")
        
        let clothsCell = CellIdentifiers.colthsCellIdentifier
        XCTAssertEqual(clothsCell, "clothsCell")
        
        let kitchenCell = CellIdentifiers.kitchenCellIdentifier
        XCTAssertEqual(kitchenCell, "kitchenCell")
        
        let colorShapeCell = CellIdentifiers.colorShapeCellIdentifier
        XCTAssertEqual(colorShapeCell, "colorShapeCell")
        
        let alphabetCell = CellIdentifiers.alphabetCellIndentifier
        XCTAssertEqual(alphabetCell, "alphabetCell")
        
        
    }

   

}
