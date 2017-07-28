//
//  GameSelectViewController.swift
//  JustTestSplitVC
//
//  Created by martynov on 2017-07-11.
//  Copyright © 2017 martynov. All rights reserved.
//

import UIKit


func myErrThrower() throws
{
    
   print("test func - remove it from GameSelectViewController")
    
}


class GameSelectViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if let navController = segue.destination as? UINavigationController {
            
            if let destinationVC = navController.topViewController as? GameViewController {
                
                
                
                if let identifier = segue.identifier {
                    
                    switch identifier {
                    case "game1", "game2", "game3" :
                        //                   destinationVC.gameView.currentGame = identifier
                        destinationVC.mygame = identifier
                        print("Segues name: \(identifier)")
                        if let senderElement = sender as? UIButton {
                            destinationVC.navigationItem.title = senderElement.currentTitle
                            
                            do {
                                
                            try myErrThrower()
                            } catch let error { print("Error : \(error)") }
                            
                        }
                    default: break
                    }
                    
                }
                
                
                
                
            }
            
        }
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}

// UISplitViewController
