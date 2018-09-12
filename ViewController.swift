//
//  ViewController.swift
//  CountryAndCityQuiz
//
//  Created by Алексей on 06.09.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK : Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    @IBOutlet weak var score: UILabel!
    let game = forQuestion()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.score.text = "0"
            makeButtonsTarget()
            createQuiz()
        
    }
    func makeButtonsTarget(){
        self.answerButton1.addTarget(self, action: #selector(checkAnswer(target:)), for: .touchUpInside)
        self.answerButton2.addTarget(self, action: #selector(checkAnswer(target:)), for: .touchUpInside)
        self.answerButton3.addTarget(self, action: #selector(checkAnswer(target:)), for: .touchUpInside)
        self.answerButton4.addTarget(self, action: #selector(checkAnswer(target:)), for: .touchUpInside)
        
    }
    @objc func checkAnswer (target: UIButton){
        if target.currentTitle! == self.game.correctAnswer {
            var score = Int(self.score.text!)
            score! += 1
            self.score.text = String(score!)
            createQuiz()
        }else{
            let loseAlert = UIAlertController(title: "Не верно", message: "", preferredStyle: .alert)
            let loseAlertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            loseAlert.addAction(loseAlertAction)
            self.present(loseAlert, animated: true, completion: nil)
            self.viewDidLoad()
        }
            
        
    }
    func createQuiz(){
        let checkScore = Int(self.score.text!)
        if checkScore! < 10{
        self.questionLabel.text = self.game.chooseCountryLevelEasy()
        }else if checkScore! == 10{
            let hardAlert = UIAlertController(title: "Внимание", message: "Начались сложные вопросы", preferredStyle: .alert)
            let hardAlertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            hardAlert.addAction(hardAlertAction)
            self.present(hardAlert, animated: true, completion: nil)
            self.questionLabel.text = self.game.chooseCountryLevelHard()
        }
        else{
            self.questionLabel.text = self.game.chooseCountryLevelHard()
        }
        var finallyAnswer = [String]()
        for _ in 1...4{
            let index = Int(arc4random_uniform(UInt32(self.game.valueOfAnswers.count)))
            finallyAnswer.append(self.game.valueOfAnswers[index])
            self.game.valueOfAnswers.remove(at: index)
        }
        self.answerButton1.setTitle(finallyAnswer[0], for: .normal)
        self.answerButton2.setTitle(finallyAnswer[1], for: .normal)
        self.answerButton3.setTitle(finallyAnswer[2], for: .normal)
        self.answerButton4.setTitle(finallyAnswer[3], for: .normal)
    }
        
  


}

