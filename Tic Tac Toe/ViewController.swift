//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Ajitesh on 17/07/17.
//  Copyright © 2017 Ajitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var final: UILabel!
    var active = true
    var player = 1
    var boxes = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var winners = [[0,1,2], [3,4,5], [6,7,8],[1,4,7],[2,5,8],[3,6,9]]
    @IBAction func buttonPressed(_ sender: Any) {
        
        if boxes[(sender as AnyObject).tag - 1] == 0 && active {
            if player == 1 {
                (sender as AnyObject).setImage(UIImage(named: "nought.png"), for: [])
                boxes[(sender as AnyObject).tag - 1] = 1
                player = 2
            } else {
                (sender as AnyObject).setImage(UIImage(named: "cross.png"), for: [])
                boxes[(sender as AnyObject).tag - 1] = 2
                player = 1
            }
  
        }
        
        for winner in winners {
            if boxes[winner[0]] != 0 && boxes[winner[0]] == boxes[winner[1]] && boxes[winner[1]] == boxes[winner[2]] {
                active = false
                if boxes[winner[0]] == 1 {
                    final.text = "Noughts Won!"
                } else {
                    final.text = "Crosses Won!"
                }
                
            }
        }
        
           }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

