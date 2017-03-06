//
//  NewSegue.swift
//  SceneTransition02
//
//  Created by Sanghoon Ahn on 2016. 8. 10..
//  Copyright © 2016년 AHN. All rights reserved.
//

import UIKit

class NewSegue: UIStoryboardSegue {
    
    override func perform() {
        
        let sourceVC = self.sourceViewController
        let destVC = self.destinationViewController
        
        UIView.transitionFromView(sourceVC.view, toView: destVC.view, duration: 2, options: UIViewAnimationOptions.TransitionCurlDown, completion: nil)
        
    }
}
