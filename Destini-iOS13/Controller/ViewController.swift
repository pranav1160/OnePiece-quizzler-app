//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()

    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        //taking user input
        let userAnswer = sender.titleLabel?.text ?? ""
        
        if(storyBrain.checkAnswer(userAnswer: userAnswer)){
            storyBrain.score += 1
        }
        
      
        
        //showing next question
        storyBrain.nextQuestion()
        updateUI()
        
        print(storyBrain.score)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    func updateUI(){
        storyLabel.text = storyBrain.showQuestion()
        choice1Button.setTitle(storyBrain.showOptions()[0], for: .normal)
        choice2Button.setTitle(storyBrain.showOptions()[1], for: .normal)
        
        scoreLabel.text = "Score: \(storyBrain.score)"
    }


}

