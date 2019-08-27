//
//  ViewController.swift
//  Random Number without Repeat
//
//  Created by Gerald on 8/27/19.
//  Copyright © 2019 Gerald Fox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomInt = 0
    var array: [Int] = []
    
    
    @IBOutlet weak var pushMe: UIButton!
    
    @IBAction func clickIt(_ sender: Any) {
        getRandomNumber ()
        
    }
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func getRandomNumber () {
        
        randomInt = Int.random(in: 1..<10)
        
        //checks to see if the random number has already been generated
        if array.contains(randomInt){
            
        // will go back and continue to generate numbers until it gets a unique number.
            self.getRandomNumber()
            
        }
        else {
            //If the number has not been generated, appends to the array.
            array.append(randomInt)
            
            //set max number of items in the array... after which it will reset the array to an empty array
            if array.count == 9 {
              //reset array
                array.removeAll()
               //restart the random number genrator
                getRandomNumber()
            }
            else {
                // prints to the label
                numberLabel.text = "\(randomInt)"
                
                // prints tha array in the output area
                print([array])
                
            }
        }
        
    }
    
}

