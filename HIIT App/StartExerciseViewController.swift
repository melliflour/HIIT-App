//
//  StartExerciseViewController.swift
//  HIIT App
//
//  Created by Faith on 12/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

var answerArray: [String] = []

var questions = ["Which musical term means 'quickly'? \n a. Presto \n b. Adagio \n c. Crescendo \n d. Forte": "a",
"What is one of the Earth's satellites? \n a. Leo \n b. The Moon \n c. Titan IV \n d. Phobos": "b",
"What is the world's largest desert? \n a. Sahara \n b. Death Valley \n c. Arctic \n d. Antarctic": "d",
"Which popular pasta sauce is made with bacon, eggs and cream? \n a. Alfredo \n b. Veloute \n c. Carbonara \n d. Marinara": "c",
"What number cannot be represented in Roman numerals? \n a. 0 \n b. 54 \n c. 235 \n d. 1": "a",
"What feature does the Manx cat not have that other cats have? \n a. Fur \n b. Tail \n c. Claws \n d. Whiskers": "b",
"What is the world's largest ocean? \n a. Atlantic \n b. Arctic \n c. Pacific \n d. Indian": "c",
"What is the process that removes harmful bacteria in milk called? \n a. Plasmolysis \n b. Fermentation \n c. Germination \n d. Pasteurisation": "d",
"What term refers to the right side of a boat? \n a. Starboard \n b. Rightboard \n c. Port side \n d. Deckboard": "a",
"How many limbs do squid have? \n a. 6 \n b. 10 \n c. 8 \n d. 12": "b",
"What substance makes up the outer layer of a tooth? \n a. Calcium \n b. Collagen \n c. Enamel \n d. Phospholipid bilayer": "c",
"Which hormone induces sleepiness? \n a. Adrenaline \n b. Melatonin \n c. Dopamine \n d. testosterone": "b",
"Which organ contains humour? \n a. Legs \n b. Ears \n c. Nose \n d. Eyes": "d",
"Which country developed emojis? \n a. Japan \n b. USA \n c. Germany \n d. South Korea": "a",
"What is the medical term for long-sightedness? \n a. Hypotonia \n b. Hyperopia \n c. Amnesia \n d.insomnia": "b",
"What is the collective noun for a group of owls? \n a. Parliament \n b. Murder \n c. Pack \n d. Flock": "a",
"(0, 1, 2, 4, 6, 9, 12, 16, ?......) What number should replace the question mark? \n a. 18 \n b. 19 \n c. 20 \n d. 24": "c",
"Isotherm is to temperature as isobar is to: \n a. Atmosphere \n b. Wind \n c. Latitude \n d. Pressure": "d",
"Which day comes three days before the day that comes two days after the day that comes two days after the day that comes three days before Wednesday? \n a. Monday \n b. Wednesday \n c. Friday \n d. Saturday":"a",
"Which two numbers come next in this sequence? \n 38, 24, 62, 12, 74, ? \n a. 86, 48 \n b. 28, 102 \n c. 62, 8 \n d. 11, 120":"b",
"In the two numerical sequences below, one number that appears in the top sequence should appear in the bottom sequence and vice versa. Which two numbers should be changed round? (102, 100, 99, 97, 96, 94, 92)  (101, 100, 98, 97, 95, 94, 93) \n a. 99, 98 \n b. 96, 95 \n c. 92, 93 \n d. 102, 101":"c",
"You have 120 cubic blocks. What is the minimum number that needs to be taken away in order to construct a solid cube with none left over? \n a. 5 \n b. 49 \n c. 56 \n d. 45":"c",
"5862 is to 714, 3498 is to 1113, and 9516 is to 156. Therefore 8257 is to? \n a. 789 \n b. 527 \n c. 157 \n d. 169":"c",
"926 is to 24, 799 is to 72 and 542 is to 22, so 956 is to? \n a. 48 \n b. 51 \n c. 90 \n d. 78":"b",
"You are sitting in a motionless car, which is tightly sealed. A helium balloon on a string is tied to the floor. If you start accelerating the car, the balloon is going to \n a. Move forward \n b. Move backward \n c. Move downwards \n d. Stay in place":"a",
"Four years ago, Meg put a nail on a tree in order to mark her height. If the tree grows 50cm per year, and currently the nail is 70cm lower than Meg, how much has Meg grown over these four years? \n a. 270 \n b. 120 \n c. 70 \n d. 130":"c",
"What day follows the day before yesterday if two days from now will be Sunday? \n a. Wednesday \n b. Thursday \n c. Friday \n d. Saturday":"a",
"If A = 250 percent of B, B = ? percent of A \n a. 1/250 \n b. 50 \n c. 40 \n d. 125":"c",
"What is the next number in the following sequence: 0 0 1 22 4 3 6 4 8 5 ? \n a. 6 \n b. 8 \n c. 10 \n d. 12":"c",
"Peter is taller than Nancy and Dan is shorter than Peter. Which of the following can be proved true: \n a. Dan is taller than Nancy. \n b. Dan is shorter than Nancy. \n c. Dan is as tall as Nancy. \n d. None of the above can be proved true.":"d",
"Together Harry and Sam caught 32 fish. Harry caught three times as many fish as Sam. How many fish did Harry catch? \n a. 6 \n b. 8 \n c. 16 \n d. 24":"d",
"If a+b = 7 and ab = 4,then find the value of (a×a) + (b×b). \n a. 50 \n b. 41 \n c. 46 \n d. 69":"b",
"The difference between the greatest and smallest two-digit even integers that are exactly divisible by 4 is: \n a. 82 \n b. 84 \n c.96 \n d. 88":"b",
]

class StartExerciseViewController: UIViewController {
  
  var correctAns = true
  
  @IBOutlet weak var exerciseLabel: UILabel!
  
  let smallVideoPlayerViewController = AVPlayerViewController()
  
  @IBOutlet weak var videoView: UIView!
  
  var allAnswerArray: [String] = []
  
  var option = ""
    
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
    self.questionView.isHidden = true
    self.exerciseView.isHidden = true
    self.answerView.isHidden = false
    if option == questions[answerArray[questionNumber]] {
      correctOrWrongLabel.text = "Correct answer!"
      correctAns = true
    } else {
      correctOrWrongLabel.text = "Wrong answer"
      correctAns = false
    }
    correctAnswerLabel.text = questions[answerArray[questionNumber]]
    Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (timer) in
      timer.invalidate()
      self.answerView.isHidden = true
      self.questionView.isHidden = true
      self.exerciseView.isHidden = false
      self.changeQuestionNumber()
      self.makeTimerForExercise()
    }
  }
  
  func changeQuestionNumber() {
    //4 questions shown
    if questionNumber >= answerArray.count {
      exerciseView.isHidden = true
      completeWorkout()
    } else {
      questionNumber = questionNumber + 1
    }
    option = ""
  }
  
  var questionNumber = 0
  
  @IBOutlet weak var questionLabel: UILabel!
  
  func createAnswerArray() {
    allAnswerArray = Array(questions.keys)
    allAnswerArray.shuffle()
    for i in 0...4 {
      answerArray.append(allAnswerArray[i])
    }
    print(answerArray)
  }
  
  func changeQuestion() {
    print(questionNumber)
    questionLabel.text = answerArray[questionNumber]
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
    exerciseView.isHidden = true
    questionView.isHidden = false
    answerView.isHidden = true
    title = workout.title
    createAnswerArray()
  }
    
  override func viewDidAppear(_ animated: Bool) {
    changeQuestion()
  }
  
  func displayExerciseVideo() {
    let myFileManager = FileManager.default
      let mainBundle = Bundle.main
      let resourcesPath = mainBundle.resourcePath!

      guard let allItemsInTheBundle = try? myFileManager.contentsOfDirectory(atPath: resourcesPath) else {
          return
    }
    
    guard let videoUrl = Bundle.main.url(forResource: workout.exercises[questionNumber].url, withExtension: "mov") else {
      return
    }

      smallVideoPlayerViewController.showsPlaybackControls = false
      smallVideoPlayerViewController.player = AVPlayer(url: videoUrl)

      videoView.addSubview(smallVideoPlayerViewController.view)

      smallVideoPlayerViewController.view.frame = videoView.bounds

      smallVideoPlayerViewController.player?.play()
  }
  
  func makeTimerForExercise() {
    displayExerciseVideo()
    if correctAns == false {
      seconds = 2
    } else {
      seconds = 1
    }
    updateTimeLabel()
    exerciseLabel.text = workout.exercises[questionNumber - 1].name
    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
      if self.seconds > 0 {
        self.seconds -= 1
        self.updateTimeLabel()
      } else {
        timer.invalidate()
        self.exerciseView.isHidden = true
        self.changeQuestion()
        self.questionView.isHidden = false
        
        self.smallVideoPlayerViewController.player?.pause()
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
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    self.smallVideoPlayerViewController.player?.pause()
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
