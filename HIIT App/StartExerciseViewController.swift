//
//  StartExerciseViewController.swift
//  HIIT App
//
//  Created by Faith on 12/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class StartExerciseViewController: UIViewController {
  
  var option = ""
  
  @IBOutlet weak var questionTimeLabel: UILabel!
  
  @IBAction func choseOptionD(_ sender: Any) {
    option = "d"
    submitAnswer()
  }
  
  @IBAction func choseOptionC(_ sender: Any) {
    option = "c"
    submitAnswer()
  }
  
  @IBAction func choseOptionB(_ sender: Any) {
    option = "b"
    submitAnswer()
  }
  
  @IBAction func choseOptionA(_ sender: Any) {
    option = "a"
    submitAnswer()
  }
  
  func submitAnswer() {
    self.answerView.isHidden = false
    if option == answerArray[questionNumber] {
      correctOrWrongLabel.text = "Correct answer!"
    } else {
      correctOrWrongLabel.text = "Wrong answer"
    }
    correctAnswerLabel.text = answerArray[questionNumber]
    Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { (timer) in
      timer.invalidate()
      self.answerView.isHidden = true
      self.questionView.isHidden = true
      self.exerciseView.isHidden = false
      self.changeQuestionNumber()
      self.makeTimerForExercise()
    }
  }
  
  func changeQuestionNumber() {
    if questionNumber + 1 >= answerArray.count {
      completeWorkout()
    } else {
      questionNumber = questionNumber + 1
    }
    option = ""
  }
  
  var questionNumber = 0
  
  var questions = ["a": "what is a dog?",
                   "b": "what is a cat?",
                   ] //insert dictionary of question
  
  @IBOutlet weak var questionLabel: UILabel!
  
  let answerArray = ["a", "b"]
  
  func changeQuestion() {
    print(questionNumber)
    questionLabel.text = questions[answerArray[questionNumber]]
  }
  
  
  @IBOutlet weak var answerView: UIView!
  
  @IBOutlet weak var correctAnswerLabel: UILabel!
  
  @IBOutlet weak var correctOrWrongLabel: UILabel!
  
  @IBOutlet weak var timeLabel: UILabel!

  @IBOutlet weak var questionView: UIView!
  
  @IBOutlet weak var exerciseView: UIView!
  
  var workout: workoutClass!
  var seconds = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    title = workout.title
  }
    
  override func viewDidAppear(_ animated: Bool) {
    exerciseView.isHidden = false
    questionView.isHidden = true
    answerView.isHidden = true
    changeQuestion()
    
    updateTimeLabel()
    makeTimerForExercise()
  }
  
  func makeTimerForExercise() {
    seconds = 3
    updateTimeLabel()
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
      if self.seconds > 0 {
        self.seconds -= 1
        self.updateTimeLabel()
      } else {
        timer.invalidate()
        self.exerciseView.isHidden = true
        self.changeQuestion()
        self.questionView.isHidden = false
        //self.makeTimerForQuestion()
      }
    }
  }
  
  func makeTimerForQuestion() {
    seconds = 6
    updateQuestionTimeLabel()
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
      if self.seconds > 0 {
        self.seconds -= 1
        self.updateQuestionTimeLabel()
      } else {
        timer.invalidate()
        self.exerciseView.isHidden = false
        self.questionView.isHidden = true
        self.makeTimerForExercise()
      }
    }
  }
  

  func completeWorkout() {
    let secondViewController = storyboard?.instantiateViewController(withIdentifier: "finishVC") as! FinishViewController
    self.navigationController?.pushViewController(secondViewController, animated: true)

  }
  
  func updateTimeLabel() {
    timeLabel.text = "\(seconds)s"
  }
  
  func updateQuestionTimeLabel() {
    questionTimeLabel.text = "\(seconds)s"
  }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
