//
//  ExercisesTableViewController.swift
//  HIIT App
//
//  Created by Faith on 12/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit

class ExercisesTableViewController: UITableViewController {
  
  var workout: workoutClass!
  var exercises: Array<exerciseClass>!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = workout.title
        exercises = workout.exercises

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "showDetails" {
        if let destVC = segue.destination as? DetailsViewController {
          if let indexPath = tableView.indexPathForSelectedRow {
            destVC.exercise = exercises[indexPath.row]
          }
        }
      }
      
      if segue.identifier == "startExercise" {
        if let destVC = segue.destination as? StartExerciseViewController {
            destVC.workout = workout
        }
      }
      
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return exercises.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "exerciseCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = exercises[indexPath.row].name

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
