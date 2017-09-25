//
//  ViewController.swift
//  MyFirstMillion
//
//  Created by Вячеслав Горлов on 25.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!

    @IBAction func buttonTapped(_ sender: OurOwnButton) {
        self.randomizeDices()
    }
    
    func diceRoll(to upperBound: UInt32) -> UInt32 {
        let diceValue = arc4random_uniform(upperBound) + 1
        return diceValue == 0 ? diceRoll(to: upperBound) : diceValue
    }
    
    func randomizeDices() {
        let dice1Value = diceRoll(to: 6)
        let dice2Value = diceRoll(to: 6)
        self.diceImage1.image = UIImage(named: "dice\(dice1Value)")
        self.diceImage2.image = UIImage(named: "dice\(dice2Value)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        self.randomizeDices()
    }
    
}

