//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet allows to reference a UI element.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // IBAction allows actions to be made after a trigger
    // is made.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Array containing all the dice faces
        let diceArray = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
        
        // Change the image contained in each ImageView by putting the references to the dices in an array
        diceImageView1.image = diceArray[Int.random(in: 1...5)]
        diceImageView2.image = diceArray[Int.random(in: 1...5)]
    }
    
}

