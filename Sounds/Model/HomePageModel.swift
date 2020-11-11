//
//  MainPageModel.swift
//  Animo
//
//  Created by Dambar Bista on 10/22/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

// Storing the all the data needed for home page items, like image and names of items
struct HomePageModel {
    
    // MARK:- HomePage Data
    
    static let homePageItemsData = [
        
        HomePageData(itemName: "Nature", itemImage: UIImage(named: "nature.png")),
        HomePageData(itemName: "Education", itemImage: UIImage(named: "education.png")),
        HomePageData(itemName: "Technology", itemImage: UIImage(named: "technology.png")),
        HomePageData(itemName: "Fruits", itemImage: UIImage(named: "fruits.png")),
        HomePageData(itemName: "Vegetables", itemImage: UIImage(named: "vegetables.png")),
        HomePageData(itemName: "Cloths", itemImage: UIImage(named: "cloths.png")),
        HomePageData(itemName: "Kitchen", itemImage: UIImage(named: "kitchen.png")),
        HomePageData(itemName: "Color&shape", itemImage: UIImage(named: "colorShape.png")),
        
    ]
    
    
    // MARK:- Nature Data
    
    static let natureItemsData = [
        
        HomePageData(itemName: "Mountain", itemImage: UIImage(named: "mountain.png")),
        HomePageData(itemName: "River", itemImage: UIImage(named: "river.png")),
        HomePageData(itemName: "Tree", itemImage: UIImage(named: "tree.png")),
        HomePageData(itemName: "Rocks", itemImage: UIImage(named: "rocks.png")),
        HomePageData(itemName: "Ocean", itemImage: UIImage(named: "ocean.png")),
        HomePageData(itemName: "Sun", itemImage: UIImage(named: "sun.png")),
        HomePageData(itemName: "Moon", itemImage: UIImage(named: "moon.png")),
        HomePageData(itemName: "Star", itemImage: UIImage(named: "star.png")),
        HomePageData(itemName: "Fire", itemImage: UIImage(named: "fire.png")),
        HomePageData(itemName: "Cloud", itemImage: UIImage(named: "cloud.png")),
        
    ]
    
    
    // MARK:- Education Data
    
    static let educationItemData = [
        
        HomePageData(itemName: "Pencil", itemImage: UIImage(named: "pencil.png")),
        HomePageData(itemName: "Reading Book", itemImage: UIImage(named: "readingBook.png")),
        HomePageData(itemName: "Eraser", itemImage: UIImage(named: "eraser.png")),
        HomePageData(itemName: "Marker", itemImage: UIImage(named: "marker.png")),
        HomePageData(itemName: "Microscope", itemImage: UIImage(named: "microscope.png")),
        HomePageData(itemName: "Brush & palette", itemImage: UIImage(named: "paletteBrush.png")),
        HomePageData(itemName: "Pen", itemImage: UIImage(named: "pen.png")),
        HomePageData(itemName: "Blackboard", itemImage: UIImage(named: "blackboard.png")),
        HomePageData(itemName: "Ruler", itemImage: UIImage(named: "ruler.png")),
        HomePageData(itemName: "Writing Book", itemImage: UIImage(named: "writingBook.png")),
        
    ]
    
    
    // MARK:- Technology Data
    
    static let technologyItemsData = [
        
        HomePageData(itemName: "Satelite", itemImage: UIImage(named: "satelite.png")),
        HomePageData(itemName: "Computer", itemImage: UIImage(named: "computer.png")),
        HomePageData(itemName: "Camera", itemImage: UIImage(named: "camera.png")),
        HomePageData(itemName: "Headphone", itemImage: UIImage(named: "headphone.png")),
        HomePageData(itemName: "Robot", itemImage: UIImage(named: "robot.png")),
        HomePageData(itemName: "Light Bulb", itemImage: UIImage(named: "lightBulb.png")),
        HomePageData(itemName: "Telephone", itemImage: UIImage(named: "telephone.png")),
        HomePageData(itemName: "Printer", itemImage: UIImage(named: "printer.png")),
        HomePageData(itemName: "Radio", itemImage: UIImage(named: "radio.png")),
        HomePageData(itemName: "TV", itemImage: UIImage(named: "tv.png")),
        
    ]
    
    
    // MARK:- Fruits Data
    
    static let fruitsItemsData = [
        
        HomePageData(itemName: "Apple", itemImage: UIImage(named: "apple.png")),
        HomePageData(itemName: "Banana", itemImage: UIImage(named: "banana.png")),
        HomePageData(itemName: "Grapes", itemImage: UIImage(named: "grapes.png")),
        HomePageData(itemName: "Mango", itemImage: UIImage(named: "mango.png")),
        HomePageData(itemName: "Orange", itemImage: UIImage(named: "orange.png")),
        HomePageData(itemName: "Peach", itemImage: UIImage(named: "peach.png")),
        HomePageData(itemName: "Pear", itemImage: UIImage(named: "pear.png")),
        HomePageData(itemName: "Pineapple", itemImage: UIImage(named: "pineapple.png")),
        HomePageData(itemName: "Plum", itemImage: UIImage(named: "plum.png")),
        HomePageData(itemName: "Strawberry", itemImage: UIImage(named: "strawberry.png")),
        
    ]
    
    
    // MARK:- Vegetables Data
    
    static let vegetablesItemsData = [
        
        HomePageData(itemName: "Broccoli", itemImage: UIImage(named: "broccoli.png")),
        HomePageData(itemName: "Carrot", itemImage: UIImage(named: "carrots.png")),
        HomePageData(itemName: "Garlic", itemImage: UIImage(named: "garlic.png")),
        HomePageData(itemName: "Okra", itemImage: UIImage(named: "okra.png")),
        HomePageData(itemName: "Onion", itemImage: UIImage(named: "onion.png")),
        HomePageData(itemName: "Pepper", itemImage: UIImage(named: "pepper.png")),
        HomePageData(itemName: "Potato", itemImage: UIImage(named: "potato.png")),
        HomePageData(itemName: "Spinach", itemImage: UIImage(named: "spinach.png")),
        HomePageData(itemName: "Tomato", itemImage: UIImage(named: "tomato.png")),
        HomePageData(itemName: "Pumpkin", itemImage: UIImage(named: "pumpkin.png")),
        
    ]
    
    
    // MARK:- Cloths Data
    
    static let clothsItemsData = [
        
        HomePageData(itemName: "T-Shirt", itemImage: UIImage(named: "tshirt.png")),
        HomePageData(itemName: "Skirt", itemImage: UIImage(named: "skirt.png")),
        HomePageData(itemName: "Hat", itemImage: UIImage(named: "hat.png")),
        HomePageData(itemName: "Pant", itemImage: UIImage(named: "pant.png")),
        HomePageData(itemName: "Socks", itemImage: UIImage(named: "socks.png")),
        HomePageData(itemName: "Shoes", itemImage: UIImage(named: "shoes.png")),
        HomePageData(itemName: "Sweater", itemImage: UIImage(named: "sweater.png")),
        HomePageData(itemName: "Sunglass", itemImage: UIImage(named: "sunGlass.png")),
        HomePageData(itemName: "Belt", itemImage: UIImage(named: "belt.png")),
        HomePageData(itemName: "Gloves", itemImage: UIImage(named: "gloves.png")),
        
    ]
    
    
    // MARK:- Kitchen Data
    
    static let kitchenItemsData = [
        
        HomePageData(itemName: "Blender", itemImage: UIImage(named: "blender.png")),
        HomePageData(itemName: "Cup", itemImage: UIImage(named: "cup.png")),
        HomePageData(itemName: "Glass", itemImage: UIImage(named: "glass.png")),
        HomePageData(itemName: "Microwave", itemImage: UIImage(named: "microwave.png")),
        HomePageData(itemName: "Pan", itemImage: UIImage(named: "pan.png")),
        HomePageData(itemName: "Plate", itemImage: UIImage(named: "plate.png")),
        HomePageData(itemName: "Refrigerator", itemImage: UIImage(named: "refrigerator.png")),
        HomePageData(itemName: "Rolling Pin", itemImage: UIImage(named: "rollingPin.png")),
        HomePageData(itemName: "Spoon & Fork", itemImage: UIImage(named: "spoonFork.png")),
        HomePageData(itemName: "Stove", itemImage: UIImage(named: "stove.png")),
        
    ]
    
    
    // MARK:- Color And shape Data
    
    static let colorAndShapeItemsData = [
        
        HomePageData(itemName: "Circle", itemImage: UIImage(named: "circle.png")),
        HomePageData(itemName: "Heart", itemImage: UIImage(named: "heart.png")),
        HomePageData(itemName: "Octagon", itemImage: UIImage(named: "octagon.png")),
        HomePageData(itemName: "Pentagon", itemImage: UIImage(named: "pentagon.png")),
        HomePageData(itemName: "Rectangle", itemImage: UIImage(named: "rectangle.png")),
        HomePageData(itemName: "Rhombus", itemImage: UIImage(named: "rhombus.png")),
        HomePageData(itemName: "Square", itemImage: UIImage(named: "square.png")),
        HomePageData(itemName: "Triangle", itemImage: UIImage(named: "triangle.png")),
        HomePageData(itemName: "Oval", itemImage: UIImage(named: "oval.png")),
        HomePageData(itemName: "Cube", itemImage: UIImage(named: "cube.png")),
        
    ]
    
    
    // MARK:- Home Page
    
    static func getHomePageItemsImage(for contentIndex: Int) -> UIImage {
        
        return homePageItemsData[contentIndex].itemImage
        
    }
    
    
    static func getHomePageItemsName(for contentIndex: Int) -> String {
        
        return homePageItemsData[contentIndex].itemName
    }
    
    
    // MARK:- Nature
    
    static func getNatureItemsName(for cellIndex: Int) -> String {
        return natureItemsData[cellIndex].itemName
    }
    
    
    static func getNatureItemsImage(for cellIndex: Int) -> UIImage {
        return natureItemsData[cellIndex].itemImage
    }
    
    
    // MARK:- Education
    
    static func getEducationItemsName(for cellIndex: Int) -> String {
        return educationItemData[cellIndex].itemName
    }
    
    
    static func getEducationItemsImage(for cellIndex: Int) -> UIImage {
        return educationItemData[cellIndex].itemImage
    }
    
    
    // MARK:- Technology
    
    static func getTechnologyItemsName(for cellIndex: Int) -> String {
        return technologyItemsData[cellIndex].itemName
    }
    
    
    static func getTechnologyItemsImage(for cellIndex: Int) -> UIImage {
        return technologyItemsData[cellIndex].itemImage
    }
    
    
    // MARK:- Fruits
    
    static func getFruitsItemsName(for cellIndex: Int) -> String {
        return fruitsItemsData[cellIndex].itemName
    }
    
    
    static func getFruitsItemsImage(for cellIndex: Int) -> UIImage {
        return fruitsItemsData[cellIndex].itemImage
    }
    
    
    // MARK:- Vegetables
    
    static func getVegetablesItemsName(for cellIndex: Int) -> String {
        return vegetablesItemsData[cellIndex].itemName
    }
    
    
    static func getVegetablesItemsImage(for cellIndex: Int) -> UIImage {
        return vegetablesItemsData[cellIndex].itemImage
    }
    
    
    // MARK:- Cloths
    
    static func getClothsItemsName(for cellIndex: Int) -> String  {
        return clothsItemsData[cellIndex].itemName
    }
    
    
    static func getClothsItemsImage(for cellIndex: Int) -> UIImage {
        return clothsItemsData[cellIndex].itemImage
    }
    
    
    // MARK:- Kitechn
    
    static func getKitchenItemsName(for cellIndex: Int) -> String {
        return kitchenItemsData[cellIndex].itemName
    }
    
    
    static func getKitchenItemsImage(for cellIndex: Int) -> UIImage {
        return kitchenItemsData[cellIndex].itemImage
    }
    
    
    // MARK:- Color And Shape
    
    static func getColorNshapeItemsName(for cellIndex: Int) -> String {
        return colorAndShapeItemsData[cellIndex].itemName
    }
    
    
    static func getColorNshapeItemsImage(for cellIndex: Int) -> UIImage {
        return colorAndShapeItemsData[cellIndex].itemImage
    }
    
    
    
}
