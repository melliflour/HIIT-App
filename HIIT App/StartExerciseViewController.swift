//
//  StartExerciseViewController.swift
//  HIIT App
//
//  Created by Faith on 12/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class StartExerciseViewController: UIViewController {
  
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
    
    seconds = 2
    updateTimeLabel()
    makeTimer()
  }
  
  func makeTimer() {
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
      if self.seconds > 0 {
        self.seconds -= 1
        self.updateTimeLabel()
      } else {
        timer.invalidate()
        self.exerciseView.isHidden = true
        self.questionView.isHidden = false
        self.completeWorkout()
        
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
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
