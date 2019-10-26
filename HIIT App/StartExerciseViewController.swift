//
//  StartExerciseViewController.swift
//  HIIT App
//
//  Created by Faith on 12/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class StartExerciseViewController: UIViewController {
  
  var answerArray: [String] = []
  
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
    self.answerView.isHidden = false
    if option == questions[answerArray[questionNumber]] {
      correctOrWrongLabel.text = "Correct answer!"
    } else {
      correctOrWrongLabel.text = "Wrong answer"
    }
    correctAnswerLabel.text = questions[answerArray[questionNumber]]
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
  "(0, 1, 2, 4, 6, 9, 12, 16, ?......) What number should replace the question mark? /n a. 18 \n b. 19 \n c. 20 \n d. 24": "c",
  "9678, 4572, 5261, 5133... Which one is an odd one out? \n a. 3527 \n b. 6895 \n c. 7768 \n d. 9366": "a",
  "Isotherm is to temperature as isobar is to: \n a. Atmosphere \n b. Wind \n c. Latitude \n d. Pressure": "d",
  "Which day comes three days before the day that comes two days after the day that comes two days after the day that comes three days before Wednesday? \n a. Monday \n b. Wednesday \n c. Friday \n d. Saturday":"a",
  "Which two numbers come next in this sequence? \n 38, 24, 62, 12, 74, ? \n a. 86, 48 \n b. 28, 102 \n c. 62, 8 \n d. 11, 120":"b",
  "In the two numerical sequences below, one number that appears in the top sequence should appear in the bottom sequence and vice versa. Which two numbers should be changed round? (102, 100, 99, 97, 96, 94, 92)  (101, 100, 98, 97, 95, 94, 93) \n a. 99, 98 \n b. 96, 95 \n c. 92, 93 \n d. 102, 101":"c",
  "You have 120 cubic blocks. What is the minimum number that needs to be taken away in order to construct a solid cube with none left over? \n a. 5 \n b. 49 \n c. 56 \n d. 45":"c",
  "5862 is to 714, 3498 is to 1113, and 9516 is to 156. Therefore 8257 is to? \n a. 789 \n b. 527 \n c. 157 \n d. 169":"c",
  "926 is to 24, 799 is to 72 and 542 is to 22, so 956 is to? \n a. 48 \n b. 51 \n c. 90 \n d. 78":"b",
  "Fear of long words is? \n a. Hippopotomonstrosesquippedaliophobia \n b. Xenophobia \n c. Aphenphosmphobia \n d. Pteromerhanophobia":"a",
  "You are sitting in a motionless car, which is tightly sealed. A helium balloon on a string is tied to the floor. If you start accelerating the car, the balloon is going to \n a. Move forward \n b. Move backward \n c. Move downwards \n d. Stay in place":"a",
  "Four years ago, Meg put a nail on a tree in order to mark her height. If the tree grows 50cm per year, and currently the nail is 70cm lower than Meg, how much has Meg grown over these four years? \n a. 270 \n b. 120 \n c. 70 \n d. 130":"c",
  "What day follows the day before yesterday if two days from now will be Sunday? \n a. Wednesday \n b. Thursday \n c. Friday \n d. Saturday":"a",
  "If A = 250 percent of B, what percent of A is B? \n a. 1/250 percent \n b. 50 percent \n c. 40 percent \n d. 125 percent":"c",
  "What is the next number in the following sequence: 0 0 1 22 4 3 6 4 8 5 ? \n a. 6 \n b. 8 \n c. 10 \n d. 12":"c",
  "If everyone working at a car wash works at the same speed, and eight people can wash 50 cars in 60 hours, then four people can wash 100 cars in how many hours? \n a. 30 \n b. 60 \n c. 120 \n d. 240":"",
  "Peter is taller than Nancy and Dan is shorter than Peter. Which of the following can be proved true: \n a. Dan is taller than Nancy. \n b. Dan is shorter than Nancy. \n c. Dan is as tall as Nancy. \n d. None of the above can be proved true.":"d",
  "Together Harry and Sam caught 32 fish. Harry caught three times as many fish as Sam. How many fish did Harry catch? \n a. 6 \n b. 8 \n c. 16 \n d. 24":"d",
  "If a+b = 7 and ab = 4,then find the value of (a×a) + (b×b). \n a. 50 \n b. 41 \n c. 46 \n d. 69":"b",
  "The difference between the greatest and smallest two-digit even integers that are exactly divisible by 4 is: \n a. 82 \n b. 84 \n c.96 \n d. 88":"b",
  "On a street there are 25 houses—10 of the houses have fewer than six rooms, 10 of the houses have more than seven rooms, and 4 houses have more than eight rooms. What is the total number of houses that are either six, seven, or eight rooms? \n a. 5 \n b. 9 \n c. 11 \n d. 14":"c"]
  
  @IBOutlet weak var questionLabel: UILabel!
  
  func createAnswerArray() {
    answerArray = Array(questions.keys)
    answerArray.shuffle()
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
    title = workout.title
    createAnswerArray()
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
