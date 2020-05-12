//
//  ViewController.swift
//  WarCardGame
//
//  Created by Larissa Uchoa on 10/04/20.
//  Copyright © 2020 Larissa Uchoa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let tabBar = self.tabBarController?.tabBar else { return }
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .gray
        
        tabBarItem.image = UIImage(named: "Cards")
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card_\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card_\(rightNumber)")
        
        if leftNumber > rightNumber {
            
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber < rightNumber {
            
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            
        } else {
            
        }
        
    }

}

