//
//  ViewController.swift
//  HIIT App
//
//  Created by Faith on 11/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
  
  var workout: workoutClass!

  override func viewDidLoad() {
    super.viewDidLoad()
    title = workout.title
  }


}

