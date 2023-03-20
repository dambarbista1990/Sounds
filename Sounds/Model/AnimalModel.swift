//
//  AnimalDataModel.swift
//  Sounds
//
//  Created by Dambar Bista on 9/19/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

// data of animals
struct AnimalData {
    var name: String
    var image: UIImage
    var sound: String
}

// Storing all the data of animals for user interface on AnimalCollectionVC
struct AnimalModel {

    static let animalData = [
        
        AnimalData(name: "Duck", image: UIImage(named: "duck.png")!, sound: "duck"),
        AnimalData(name: "Sheep", image: UIImage(named: "sheep.png")!, sound: "sheep"),
        AnimalData(name: "Mouse", image: UIImage(named: "mouse.png")!, sound: "mouse"),
        AnimalData(name: "Lion", image: UIImage(named: "lion.png")!, sound: "lion"),
        AnimalData(name: "Rabbit", image: UIImage(named: "rabbit.png")!, sound: "rabbit"),
        AnimalData(name: "Parrot", image: UIImage(named: "parrot.png")!, sound: "parrot"),
        AnimalData(name: "Bear", image: UIImage(named: "bear.png")!, sound: "bear"),
        AnimalData(name: "Tiger", image: UIImage(named: "tiger.png")!, sound: "tiger"),
        AnimalData(name: "Cat", image: UIImage(named: "cat.png")!, sound: "cat"),
        AnimalData(name: "Chimpanzee", image: UIImage(named: "chimpanzee.png")!, sound: "chimp"),
        AnimalData(name: "Cow", image: UIImage(named: "cow.png")!, sound: "cow"),
        AnimalData(name: "Dog", image: UIImage(named: "dog.png")!, sound: "dog"),
        AnimalData(name: "Donkey", image: UIImage(named: "donkey.png")!, sound: "donkey"),
        AnimalData(name: "Elephant", image: UIImage(named: "elephant.png")!, sound: "elephant"),
        AnimalData(name: "Frog", image: UIImage(named: "frog.png")!, sound: "frog"),
        AnimalData(name: "Goat", image: UIImage(named: "goat.png")!, sound: "goat"),
        AnimalData(name: "Hippo", image: UIImage(named: "hippo.png")!, sound: "hippo"),
        AnimalData(name: "Horse", image: UIImage(named: "horse.png")!, sound: "horse"),
        AnimalData(name: "Hyena", image: UIImage(named: "hyena.png")!, sound: "hyena"),
        AnimalData(name: "Jaguar", image: UIImage(named: "jaguar.png")!, sound: "jaguar"),
        AnimalData(name: "Owl", image: UIImage(named: "owl.png")!, sound: "owl"),
        AnimalData(name: "Puppy", image: UIImage(named: "puppy.png")!, sound: "puppy"),
        AnimalData(name: "Panther", image: UIImage(named: "panther.png")!, sound: "panther"),
        AnimalData(name: "Peacock", image: UIImage(named: "peacock.png")!, sound: "peacock"),
        AnimalData(name: "Penguin", image: UIImage(named: "penguin.png")!, sound: "penguin"),
        AnimalData(name: "Pig", image: UIImage(named: "pig.png")!, sound: "pig"),
        AnimalData(name: "Raccoon", image: UIImage(named: "raccoon.png")!, sound: "raccon"),
        AnimalData(name: "Cheetah", image: UIImage(named: "cheetah.png")!, sound: "cheetah"),
        AnimalData(name: "Rhino", image: UIImage(named: "rhino.png")!, sound: "rhino"),
        AnimalData(name: "Rooster", image: UIImage(named: "rooster.png")!, sound: "rooster"),
        AnimalData(name: "Sealion", image: UIImage(named: "sealion.png")!, sound: "sealion"),
        AnimalData(name: "Snake", image: UIImage(named: "snake.png")!, sound: "snake"),
        AnimalData(name: "Squirrel", image: UIImage(named: "squirrel.png")!, sound: "squrial"),
        AnimalData(name: "Leopard", image: UIImage(named: "leopard.png")!, sound: "leopard"),
        AnimalData(name: "Camel", image: UIImage(named: "camel.png")!, sound: "camel"),
        AnimalData(name: "Wolf", image: UIImage(named: "wolf.png")!, sound: "wolf"),
        AnimalData(name: "Eagle", image: UIImage(named: "eagle.png")!, sound: "eagle"),
        AnimalData(name: "Zebra", image: UIImage(named: "zebra.png")!, sound: "zebra"),
        
    ]

    
    static func getAnimalName(index: Int) -> String {

        return animalData[index].name
    }

    static func getAnimalImage(index: Int) -> UIImage {

        return animalData[index].image
      }
    
    static func getAnimalSound(index: Int) -> String {
        return animalData[index].sound
    }

}
