//
//  StartExerciseViewController.swift
//  HIIT App
//
//  Created by Faith on 12/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class StartExerciseViewController: UIViewController {
  
  var workout: workoutClass!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = workout.title
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
