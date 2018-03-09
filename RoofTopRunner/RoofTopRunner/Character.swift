//
//  Character.swift
//  RoofTopRunner
//
//  Created by Uchenna  Aguocha on 3/8/18.
//  Copyright © 2018 Uchenna  Aguocha. All rights reserved.
//

import SpriteKit

class Character: SKSpriteNode {
    
    
    
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    /*
         Player's abilities
         1. run
         2. jump
         3. swing
         4. walk
     */
    
    
    func run() -> SKAction {
        let node = SKNode()
        
        let endlessRunAction = SKAction.moveTo(x: 5.0, duration: 3)
        
        
    }
    
    
}











