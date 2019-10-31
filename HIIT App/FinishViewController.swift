//
//  FinishViewController.swift
//  HIIT App
//
//  Created by Faith on 18/10/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {
  
  @IBOutlet weak var closeButton: UIButton!
  
  @IBAction func closeQuestionView(_ sender: Any) {
    questionTextView.isHidden = true
    returnView.isHidden = false
    closeButton.isHidden = true
  }
  
  @IBOutlet weak var returnView: UIView!
  
  @IBOutlet weak var questionTextView: UITextView!
  
  @IBAction func showQuestions(_ sender: Any) {
    returnView.isHidden = true
    questionTextView.isHidden = false
    closeButton.isHidden = false
    var questionLabelText = "\(answerArray[0])\n\n"
    for i in 1...answerArray.count - 1 {
      questionLabelText += "\(answerArray[i])\n\n"
    }
    print(questionLabelText)
    questionTextView.text = questionLabelText
  }
  
  @IBAction func returnHome(_ sender: Any) {
    self.navigationController?.popToRootViewController(animated: true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    returnView.isHidden = false
    questionTextView.isHidden = true
    closeButton.isHidden = true
    title = "Finish"
    navigationItem.hidesBackButton = true
    
  }
  
  
}
