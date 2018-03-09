//
//  PhysicsCategory.swift
//  RoofTopRunner
//
//  Created by Uchenna  Aguocha on 3/8/18.
//  Copyright © 2018 Uchenna  Aguocha. All rights reserved.
//

import Foundation

enum PhysicsCategory: UInt32 {
    
    typealias RawValue = UInt32
    
    case player   = 0b1     // 0001
    case enemy    = 0b10    // 0010
    case ground   = 0b100   // 0100
    case obstacle = 0b1000  // 1000
    case none     = 0       // 0000
}
