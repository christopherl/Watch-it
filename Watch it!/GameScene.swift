//
//  GameScene.swift
//  Watch it!
//
//  Created by Christopher Lott on 06.09.14.
//  Copyright (c) 2014 Christopher Lott. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var spaceColor = SKColor()
    var spaceShip1 = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        // setup background color
        spaceColor = SKColor(red: 81.0/255.0, green: 192.0/255.0, blue: 201.0/255.0, alpha: 1.0)
        self.backgroundColor = spaceColor
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            sprite.setScale(0.2)
            sprite.position = location
            
            let moveAction = SKAction.moveByX(50, y: 40, duration: 1)
            let rotateAction = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(moveAction))
            sprite.runAction(SKAction.repeatActionForever(rotateAction))
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
