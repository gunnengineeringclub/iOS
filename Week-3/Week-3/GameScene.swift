//
//  GameScene.swift
//  Week-3
//
//  Created by Nikhil D'Souza on 11/3/16.
//  Copyright © 2016 Nikhil D'Souza. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let square = SKShapeNode(rectOf: CGSize(width: 200, height: 200))
    var location = CGPoint.zero
    var touched = false
    
    override func didMove(to view: SKView) {
        /* Add a sprite to the scene */
        square.position = CGPoint(x: size.width / 2, y:  size.height / 2) //set position of square
        square.fillColor = SKColor.blue //color of square
        self.addChild(square)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        touched = true
        for touch in touches {
            location = touch.location(in:self)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            location = touch.location(in: self)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Stop node from moving to touch
        touched = false
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        if (touched) {
            moveNodeToLocation()
        }
    }
    
    // Move the node to the location of the touch
    func moveNodeToLocation() {
        // Compute vector components in direction of the touch
        var dx = location.x - square.position.x
        var dy = location.y - square.position.y
        // How fast to move the node. Adjust this as needed
        let speed:CGFloat = 0.25
        // Scale vector
        dx = dx * speed
        dy = dy * speed
        square.position = CGPoint(x:square.position.x+dx, y:square.position.y+dy)
    }
}
