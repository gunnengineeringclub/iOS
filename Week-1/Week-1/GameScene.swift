//
//  GameScene.swift
//  Week-1
//
//  Created by Nikhil D'Souza on 10/6/16.
//  Copyright © 2016 Nikhil D'Souza. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func sceneDidLoad() {
        let square = SKShapeNode(rectOf: CGSize(width: 200, height: 200)) //create square and initialize with size
        square.position = CGPoint(x: size.width / 2, y:  size.height / 2) //set position of square
        square.fillColor = SKColor.blue //color of square
        
        addChild(square) //add square to scene
    }
    
}
