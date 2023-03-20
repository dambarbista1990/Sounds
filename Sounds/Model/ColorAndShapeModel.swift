//
//  ShapeColorNameModel.swift
//  Animo
//
//  Created by Dambar Bista on 10/23/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation

// Storing the shape and color of shapes
struct ColorAndShapeData {
    var itemsNameAndColor: String
}

// This method is for to say shape and color name when tap. speak by speech synthesizer
struct ColorAndShapeModel {
    static let shapeName = [
        ColorAndShapeData(itemsNameAndColor: "Green Circle"),
        ColorAndShapeData(itemsNameAndColor: "Red Heart"),
        ColorAndShapeData(itemsNameAndColor: "Grey Octagon"),
        ColorAndShapeData(itemsNameAndColor: "Orange Pentagon"),
        ColorAndShapeData(itemsNameAndColor: "Brown Rectangle"),
        ColorAndShapeData(itemsNameAndColor: "yello Rhombus"),
        ColorAndShapeData(itemsNameAndColor: "Blue Square"),
        ColorAndShapeData(itemsNameAndColor: "Black Triangle"),
        ColorAndShapeData(itemsNameAndColor: "Pink Oval"),
        ColorAndShapeData(itemsNameAndColor: "Purple Cube"),
    ]
    
    static func getShapeAndColorName(for selectIndex: Int) -> String {
        return shapeName[selectIndex].itemsNameAndColor
    }
}


