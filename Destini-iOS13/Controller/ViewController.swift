//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        
        // Check which button was pressed
        let buttonPressed = sender.currentTitle!
        storyBrain.nextStory(choice: buttonPressed)
        
        updateUI()
        
    }
    
    func updateUI() {
        let newStory = storyBrain.getNewStory()
        
        storyLabel.text = newStory.title
        choice1Button.setTitle(newStory.choice1, for: .normal)
        choice2Button.setTitle(newStory.choice2, for: .normal)
 

    }
}

