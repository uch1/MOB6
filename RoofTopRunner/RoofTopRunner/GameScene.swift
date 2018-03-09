//
//  GameScene.swift
//  RoofTopRunner
//
//  Created by Uchenna  Aguocha on 2/21/18.
//  Copyright © 2018 Uchenna  Aguocha. All rights reserved.
//

import SpriteKit
import GameplayKit

/*
 TODO: Invent interesting obstacles
    1. Pitfall from the edge of the building
    2. Grapple to swing on rods
    3. Spring to jump on
    4. Jumping from wall to wall
*/


class GameScene: SKScene {

    var player: Character!
    
    override func didMove(to view: SKView) {
        
        
        player = Character(color: UIColor.red, size: .init(width: 20, height: 50))
        
        addChild(player)
    }
    
    override func update(_ currentTime: TimeInterval) {
        <#code#>
    }
    
}
