//
//  ViewController.swift
//  HIIT App
//
//  Created by Faith on 11/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
  
  var exercise: exerciseClass!
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = exercise.name
    descriptionLabel.text = exercise.description
  }


}

