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
    
    // Store the number of the dice to show and where
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         // UIImage allows to load an image.
         diceImageView1.image = UIImage(named: "DiceOne")
         diceImageView2.image = UIImage(named: "DiceSix")
        */
    }
    
    // IBAction allows actions to be made after a trigger
    // is made.
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        /*
         // Change image of dice in each ImageView
         diceImageView1.image = UIImage(named: "DiceFour")
         diceImageView2.image = UIImage(named: "DiceFour")
         */
        
        // Change the image contained in each ImageView by putting the references to the dices in an array
        diceImageView1.image = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")][leftDiceNumber]
        
        diceImageView2.image = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")][rightDiceNumber]
        
        
        
        // Uncrease the left dice value
        leftDiceNumber += 1
        rightDiceNumber -= 1
    }
    
}

