//
//  GameScene.swift
//  SushiNeko
//
//  Created by Uchenna  Aguocha on 2/23/18.
//  Copyright © 2018 Uchenna  Aguocha. All rights reserved.
//

import SpriteKit
import GameplayKit

/* Tracking enum for use with characte and sushi side */
enum Side {
    case left
    case right
    case none
}

class GameScene: SKScene {
    
    /* Game Objects */
    var sushiBasePiece: SushiPiece!
    var character: Character!
    
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        /* Connect game objects */
        sushiBasePiece = childNode(withName: "sushiBasePiece") as! SushiPiece
        character = childNode(withName: "character") as! Character
        
        /* Setup chopstick connections */
        sushiBasePiece.connectChopsticks()
    }
    
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
}
