//
//  GameScene.swift
//  Penguin Escape
//
//  Created by Sanghoon Ahn on 2017. 7. 18..
//  Copyright © 2017년 AHN. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let cam = SKCameraNode()
    
    let bee = SKSpriteNode()
    
    
    override func didMove(to view: SKView) {
        self.anchorPoint = .zero
        
        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.95, alpha: 1.0)
        
        self.camera = cam
        self.addTheFlyingBee()
        
    }
    
    override func didSimulatePhysics() {
        self.camera!.position = bee.position
    }
    
    func addTheFlyingBee(){
        bee.position = CGPoint(x: 250, y: 250)
        bee.size = CGSize(width: 28, height: 24)
        self.addChild(bee)
        // -------------- BEE
        
        let beeAtlas = SKTextureAtlas(named: "Enemies")
        
        let beeFrames:[SKTexture] = [
            beeAtlas.textureNamed("bee"),
            beeAtlas.textureNamed("bee-fly")
        ]
        
        let flyAction = SKAction.animate(with: beeFrames, timePerFrame: 0.14)
        let beeAction = SKAction.repeatForever(flyAction)
        bee.run(beeAction)
        
        let pathLeft = SKAction.moveBy(x: -200, y: -10, duration: 2)
        let pathRight = SKAction.moveBy(x: 200, y: -10, duration: 2)
        
        let flipTextureNegative = SKAction.scaleX(to: -1, duration: 0)
        let flipTexturePositive = SKAction.scaleX(to: 1, duration: 0)
        
        let flightOfTheBee = SKAction.sequence([pathLeft,flipTextureNegative,pathRight,flipTexturePositive])
        let neverEndingFlight = SKAction.repeatForever(flightOfTheBee)
        bee.run(neverEndingFlight)
        // BEE --------------
        let bee2 = Bee()
        bee2.position = CGPoint(x: 325, y:325)
        self.addChild(bee2)
        let bee3 = Bee()
        bee3.position = CGPoint(x: 200, y:325)
        self.addChild(bee3)
        // -------------- BAT
//        let bat = SKSpriteNode(imageNamed: "bat")
//        bat.size = CGSize(width: 28, height: 24)
//        bat.position = CGPoint(x: 400, y: 175)
//        self.addChild(bat)
//        
//        let batFrame:[SKTexture] = [
//            beeAtlas.textureNamed("bat"),
//            beeAtlas.textureNamed("bat-fly")
//        ]
//        
//        let batFlyAction = SKAction.animate(with: batFrame, timePerFrame: 0.07)
//        let batAction = SKAction.repeatForever(batFlyAction)
//        bat.run(batAction)
//        
//        let pathLeft2 = SKAction.moveBy(x: -200, y: -150, duration: 2)
//        let pathRight2 = SKAction.moveBy(x: 200, y: 150, duration: 2)
//        
//        let flightOfTheBat = SKAction.sequence([pathLeft2,flipTextureNegative,pathRight2,flipTexturePositive])
//        let batNeverEndingFlight = SKAction.repeatForever(flightOfTheBat)
//        bat.run(batNeverEndingFlight)
        // BAT --------------

    }
}
