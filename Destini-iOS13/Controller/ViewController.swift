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

        storyBrain.storyNumber = 0
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.titleLabel?.text)
        updateUI()
    }
    
    private func updateUI() {
        storyLabel.text = storyBrain.currentStory.title
        choice1Button.setTitle(storyBrain.currentStory.choice1, for: .normal)
        choice2Button.setTitle(storyBrain.currentStory.choice2, for: .normal)
    }

}
