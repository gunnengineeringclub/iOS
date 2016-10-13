//
//  GameScene.swift
//  Week-2
//
//  Created by Nikhil D'Souza on 10/6/16.
//  Copyright © 2016 Nikhil D'Souza. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let square = SKShapeNode(rectOf: CGSize(width: 200, height: 200))
    
    override func sceneDidLoad() {
        //create square and initialize with size
        square.position = CGPoint(x: size.width / 2, y:  size.height / 2) //set position of square
        square.fillColor = SKColor.blue //color of square
        
        let moveDownAction = SKAction.move(to: CGPoint.init(x: square.position.x, y: 100), duration: 2.0)
        square.run(moveDownAction)
        
        addChild(square) //add square to scene
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
}
