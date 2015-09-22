//
//  ViewController.swift
//  PickAColor
//
//  Created by Student on 9/22/15.
//  Copyright (c) 2015 Charles Findlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = NSTimer()
    var correctChoice = false
    let colorWheel = ColorWheel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = colorWheel.randomColor()
        startGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startGame() {
        var computerChoice = colorWheel.randomColor()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: Selector("changeBackgroundColor"), userInfo: nil, repeats: true)
        
    }
    
    func changeBackgroundColor() {
        view.backgroundColor = colorWheel.randomColor()
        
        if(correctChoice) {
            timer.invalidate()
        }
    }


}

