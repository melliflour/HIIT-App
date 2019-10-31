//
//  ViewController.swift
//  HIIT App
//
//  Created by Faith on 11/9/19.
//  Copyright © 2019 Faith. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class DetailsViewController: UIViewController {
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      let audioSession = AVAudioSession.sharedInstance()
      do {
          try audioSession.setCategory(.playback, mode: .moviePlayback)
      }
      catch {
          print("Setting category to AVAudioSessionCategoryPlayback failed.")
      }
      return true
  }
  
  @IBAction func playVideo(_ sender: Any) {
    guard let url = URL(string: exercise.url) else {
        return
    }
    // Create an AVPlayer, passing it the HTTP Live Streaming URL.
    let player = AVPlayer(url: url)

    // Create a new AVPlayerViewController and pass it a reference to the player.
    let controller = AVPlayerViewController()
    controller.player = player

    // Modally present the player and call the player's play() method when complete.
    present(controller, animated: true) {
        player.play()
    }
  }
  
  var exercise: exerciseClass!
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = exercise.name
    descriptionLabel.text = exercise.description
  }


}

