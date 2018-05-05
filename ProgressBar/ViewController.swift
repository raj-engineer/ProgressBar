//
//  ViewController.swift
//  ProgressBar
//
//  Created by Rajesh Sharma on 5/5/18.
//  Copyright © 2018 Rajesh Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    let MAXTIME : Float = 10.0
    var currentTime : Float = 0.0
    
    // MARK: IBOutlet
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    // MARK: ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    @IBAction func performAction(_ sender: UIButton) {
        
        progressView.setProgress(currentTime, animated: true)
        perform(#selector(updateProgress), with: nil, afterDelay: 1.0)
        
    }
    
    
    @objc func updateProgress(){
        
        currentTime = currentTime + 1.0
        progressView.progress = currentTime/MAXTIME
        labelTime.text = "\(currentTime)"
        
        if currentTime < MAXTIME{
            perform(#selector(updateProgress), with: nil, afterDelay: 1.0)
        }else{
            print("Stop")
            currentTime = 0.0
        }
    }
    
}

