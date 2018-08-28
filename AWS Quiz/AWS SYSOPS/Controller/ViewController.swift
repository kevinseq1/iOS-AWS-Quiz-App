//
//  ViewController.swift
//  AWS SYSOPS
//
//  Created by KS on 8/27/18.
//  Copyright © 2018 KS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Variables

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreCounter: UILabel!
    @IBOutlet weak var progressView: UIView!
    
    //Create a question bank object
    let allQuestion = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            questionNumber += 1
            score += 1
            updateQuestion()
            updateUI()
        }
    }
    
    
    //Updates the Question
    func updateQuestion(){
        if questionNumber < allQuestion.list.count {
            questionLabel.text = allQuestion.list[questionNumber].question
            optionA.setTitle(allQuestion.list[questionNumber].optionA, for: UIControl.State.normal)
            selectedAnswer = allQuestion.list[questionNumber].correctAnswer
        } else {
            questionNumber -= 1
            let alert = UIAlertController(title: "Awesome", message: "End of quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        updateUI()
    }
    
    //Updates the User Interface
    func updateUI(){
        questionCounter.text = "\(questionNumber + 1)/\(allQuestion.list.count)"
        scoreCounter.text = "Score: \(score)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestion.list.count)) * CGFloat(questionNumber + 1)
        
    }
    
    //Restarts the Quiz
    func restartQuiz(){
        questionNumber = 0
        score = 0
        updateQuestion()
    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        if questionNumber > 0 {
            questionNumber -= 1
            updateQuestion()
        }
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if questionNumber < allQuestion.list.count - 1 {
            questionNumber += 1
            updateQuestion()
        
        }
    }
    
    
}

