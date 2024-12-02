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
    
    let stories: [Story] = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest", choice1: "Open it.", choice2: "Check for traps.")
    ]
    
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyNumber = 0
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.titleLabel?.text == stories[0].choice1 {
            storyNumber = 1
        } else if sender.titleLabel?.text == stories[0].choice2 {
            storyNumber = 2
        }
        updateUI()
    }
    
    private func updateUI() {
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].choice2, for: .normal)
    }

}
