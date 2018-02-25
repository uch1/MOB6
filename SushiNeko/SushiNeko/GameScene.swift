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

func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

class GameScene: SKScene {
    
    /* Game Objects */
    var sushiBasePiece: SushiPiece!
    var character: Character!
    
    /* Sushi tower array */
    var sushiTower = [SushiPiece]()
    
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        /* Connect game objects */
        sushiBasePiece = childNode(withName: "sushiBasePiece") as! SushiPiece
        character = childNode(withName: "character") as! Character
        
        /* Setup chopstick connections */
        sushiBasePiece.connectChopsticks()
        
        /* Manually stack the start of the tower */
        self.addSushiPiece(side: .none)
        self.addSushiPiece(side: .right)

        /* Randomize tower to just outside of the screen */
        addRandomSushiPieces(total: 10)
    }
    
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    func addSushiPiece(side: Side) {
        /* Add a new sushi piece to the sushi tower */
        
        /* Copy original sushi piece */
        let newPiece = sushiBasePiece.copy() as! SushiPiece
        newPiece.connectChopsticks()
        
        /* Access last piece properties */
        let lastPiece = sushiTower.last
        
        /* Add on top of last piece, defualt on first piece */
        let lastPosition = lastPiece?.position ?? sushiBasePiece.position
        newPiece.position.x = lastPosition.x
        newPiece.position.y = lastPosition.y + 55
        
        /* Increment Z to ensure it's on top of the last piece, default on first piece */
        let lastZPosition = lastPiece?.zPosition ?? sushiBasePiece.zPosition
        newPiece.zPosition = lastZPosition + 1
        
        /* Set side */
        newPiece.side = side
        
        /* Add sushi to scene */
        self.addChild(newPiece)
        
        /* Add sushi piece to the sushi tower */
        sushiTower.append(newPiece)
        
    }
    
    func addRandomSushiPieces(total: Int) {
        /* Add random sushi pieces to the sushi tower */
        
        for _ in 1...total {
            
            /* Need to access last piece properties */
            let lastPiece = sushiTower.last as SushiPiece!
            
            /* Need to ensure we don't create impossible sushi structures */
            if lastPiece?.side != .none {
                addSushiPiece(side: .none)
            } else {
                
                /* Random Number Generator */
                let rand = arc4random_uniform(100)
                
                if rand < 45 {
                    /* 45% Chance of a left piece */
                    addSushiPiece(side: .left)
                } else if rand < 90 {
                    /* 45% Chance of right piece */
                    addSushiPiece(side: .right)
                } else {
                    /* 10% Chance of an empty piece */
                    addSushiPiece(side: .none)
                }
                
            }
        }
    }

    
}


























