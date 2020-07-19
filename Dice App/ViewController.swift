//
//  ViewController.swift
//  Dice App
//
//  Created by user177767 on 7/18/20.
//  Copyright © 2020 Fernando Callejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceView1.alpha = 0.5
        diceView2.alpha = 0.5
    }

    @IBAction func rollButton(_ sender: UIButton) {
        diceView1.alpha = 1
        diceView2.alpha = 1     
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceView1.image = diceArray.randomElement()
        diceView2.image = diceArray.randomElement()
    }
    
}

