//
//  StartExerciseViewController.swift
//  HIIT App
//
//  Created by Faith on 12/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class StartExerciseViewController: UIViewController {
  
  @IBOutlet weak var questionTimeLabel: UILabel!
  
  @IBAction func submitAnswer(_ sender: Any) {
    if answerField.text == "1" {
      correctOrWrongLabel.text = "Correct answer!"
    } else {
      correctOrWrongLabel.text = "Wrong answer"
    }
    correctAnswerLabel.text = "1. Melody"
    Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (timer) in
      timer.invalidate()
      self.answerView.isHidden = true
      self.makeTimerForExercise()
    }
  }
  
  @IBOutlet weak var answerField: UITextField!
  
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
        self.questionView.isHidden = false
        self.makeTimerForQuestion()
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
