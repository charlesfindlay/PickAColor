//
//  ViewController.swift
//  PickAColor
//
//  Created by Student on 9/22/15.
//  Copyright (c) 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessColorButton: UIButton!
    @IBOutlet weak var resultUserGuess: UILabel!
    @IBOutlet weak var guessCounter: UILabel!
    
    
    var timer = NSTimer()
    let colorWheel = ColorWheel()
    var randomColor = UIColor()
    var computerChoice = UIColor()
    var count: Int = 0
    
    
    
    override func viewWillAppear(animated: Bool) {
        resultUserGuess.hidden = true
        guessCounter.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        guessColorButton.tintColor = randomColor
        guessColorButton.backgroundColor = UIColor.whiteColor()
        guessColorButton.layer.cornerRadius = 25
        guessColorButton.layer.borderWidth = 2
        
        startGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func getUserGuess(sender: AnyObject) {
        var currentColor = view.backgroundColor
        count++
        
        if(currentColor == computerChoice) {
            timer.invalidate()
            resultUserGuess.text = "Great Job!"
            resultUserGuess.hidden = false
            guessCounter.text = "You guessed the color in \(count) tries"
            guessCounter.hidden = false
        } else {
            resultUserGuess.text = "Wrong! Try Again."
            resultUserGuess.hidden = false
        }
    }
    
    
    func startGame() {
        computerChoice = colorWheel.randomColor()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: Selector("changeBackgroundColor"), userInfo: nil, repeats: true)
        
    }
    
    func changeBackgroundColor() {
        randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        guessColorButton.tintColor = randomColor
        resultUserGuess.hidden = true
        
    }


}

