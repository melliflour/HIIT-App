//
//  FinishViewController.swift
//  HIIT App
//
//  Created by Faith on 18/10/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {
  
  
  @IBAction func returnHome(_ sender: Any) {
    self.navigationController?.popToRootViewController(animated: true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Finish"
    navigationItem.hidesBackButton = true
    
  }
  
  
}
