//
//  HomeTableViewController.swift
//  HIIT App
//
//  Created by Faith on 11/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class exerciseClass: Codable {
  var name : String
  var description : String
  var image : String
  
  init(name: String, description: String, image: String) {
    self.name = name
    self.description = description
    self.image = image
  }
}

class workoutClass: Codable {
  var title : String
  var exercises : Array<exerciseClass>
  
  init(title: String, exercises: Array<exerciseClass>) {
    self.title = title
    self.exercises = exercises
  }
}

class HomeTableViewController: UITableViewController {
  
  var workouts = [
    workoutClass(title: "Workout 1", exercises: [
      exerciseClass(name: "Kicks", description: "Stand with feet hip-distance apart. Kick your left heel to your left glute. Set your foot back down and repeat with your right foot.", image: "Andrea"),
      exerciseClass(name: "Jump Squats", description: "Stand with your feet slightly wider than hip-distance apart. Bend your knees and sit your butt back, keeping your chest upright. Jump up into the air as high as you can. Land softly and immediately lower into the next rep.", image: "Andrea"),
      exerciseClass(name: "Burpees", description: "Start standing with your feet hip-distance apart and bring your palms to the floor. Jump your feet back so that you are in high plank, keeping your core tight and your hips lifted. Bend your elbows and do 1 push-up. Now jump your feet to the outside of your hands. As you stand up, explode up and jump as high as you can, bringing your arms overhead.", image: "Andrea"),
      exerciseClass(name: "Mountain Climbers", description: "Start in high plank and draw your right knee under your torso, keeping the toes off the ground. Return your right foot to starting position. Switch legs and bring your left knee under your chest. Keep switching legs as if you're running in place.", image: "Andrea")
      ]),
    workoutClass(title: "Workout 2", exercises: [
      exerciseClass(name: "Kicks", description: "Stand with feet hip-distance apart. Kick your left heel to your left glute. Set your foot back down and repeat with your right foot.", image: "Andrea"),
      exerciseClass(name: "Jump Squats", description: "Stand with your feet slightly wider than hip-distance apart. Bend your knees and sit your butt back, keeping your chest upright. Jump up into the air as high as you can. Land softly and immediately lower into the next rep.", image: "Andrea"),
      exerciseClass(name: "Burpees", description: "Start standing with your feet hip-distance apart and bring your palms to the floor. Jump your feet back so that you are in high plank, keeping your core tight and your hips lifted. Bend your elbows and do 1 push-up. Now jump your feet to the outside of your hands. As you stand up, explode up and jump as high as you can, bringing your arms overhead.", image: "Andrea"),
      exerciseClass(name: "Mountain Climbers", description: "Start in high plank and draw your right knee under your torso, keeping the toes off the ground. Return your right foot to starting position. Switch legs and bring your left knee under your chest. Keep switching legs as if you're running in place.", image: "Andrea")
      ]),
    workoutClass(title: "Workout 3", exercises: [
      exerciseClass(name: "Kicks", description: "Stand with feet hip-distance apart. Kick your left heel to your left glute. Set your foot back down and repeat with your right foot.", image: "Andrea"),
      exerciseClass(name: "Jump Squats", description: "Stand with your feet slightly wider than hip-distance apart. Bend your knees and sit your butt back, keeping your chest upright. Jump up into the air as high as you can.", image: "Andrea"),
      exerciseClass(name: "Burpees", description: "Start standing with your feet hip-distance apart and bring your palms to the floor. Jump your feet back so that you are in high plank, keeping your core tight and your hips lifted. Bend your elbows and do 1 push-up. As you stand up, jump as high as you can, bringing your arms overhead.", image: "Andrea"),
      exerciseClass(name: "Mountain Climbers", description: "Start in high plank and draw your right knee under your torso, keeping the toes off the ground. Return your right foot to starting position. Switch legs and bring your left knee under your chest. Keep switching legs as if you're running in place.", image: "Andrea")
      ]),
    workoutClass(title: "Workout 4", exercises: [
      exerciseClass(name: "Kicks", description: "Stand with feet hip-distance apart. Kick your left heel to your left glute. Set your foot back down and repeat with your right foot.", image: "Andrea"),
      exerciseClass(name: "Jump Squats", description: "Stand with your feet slightly wider than hip-distance apart. Bend your knees and sit your butt back, keeping your chest upright. Jump up into the air as high as you can.", image: "Andrea"),
      exerciseClass(name: "Burpees", description: "Start standing with your feet hip-distance apart and bring your palms to the floor. Jump your feet back so that you are in high plank, keeping your core tight and your hips lifted. Bend your elbows and do 1 push-up. As you stand up, jump as high as you can, bringing your arms overhead.", image: "Andrea"),
      exerciseClass(name: "Mountain Climbers", description: "Start in high plank and draw your right knee under your torso, keeping the toes off the ground. Return your right foot to starting position. Switch legs and bring your left knee under your chest. Keep switching legs as if you're running in place.", image: "Andrea")
      ])
  ]
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showExercises" {
      if let destVC = segue.destination as? ExercisesTableViewController {
        if let indexPath = tableView.indexPathForSelectedRow {
          destVC.workout = workouts[indexPath.row]
        }
      }
    }
  }
  
  @IBAction func backToHome(with segue: UIStoryboardSegue) {
    
  }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return workouts.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "workoutCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = workouts[indexPath.row].title
      
        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
