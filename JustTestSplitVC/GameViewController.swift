//
//  ViewController.swift
//  JustTestSplitVC
//
//  Created by martynov on 2017-07-11.
//  Copyright © 2017 martynov. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var mygame: String? { didSet { updateUI() } }
    
    @IBOutlet var gameView: GameView! { didSet { updateUI() }}
    
    @IBOutlet weak var gameLabel: UILabel!
    

    
    // Our updateUI take things from our model
    fileprivate func updateUI(){
        if gameView != nil {
            gameLabel.text = mygame
            print("Game Label: \(gameLabel.text)")
            
                       
            
            
        }
    }
    
}
