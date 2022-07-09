//
//  ViewController.swift
//  EggTimer
//
//  Created by Kanishk Kamalvanshi on 7/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var currTime = 210

    @IBOutlet weak var time: UILabel!
    
    @IBAction func play(_ sender: Any) {
        print("play")
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreaseTimer), userInfo: nil, repeats: true)
    }
    @objc func decreaseTimer() {
        if currTime > 0 {
            currTime -= 1
            time.text = String(currTime)
        } else {
            timer.invalidate()
        }
    }
    
    @IBAction func pause(_ sender: Any) {
        print("pause")
        timer.invalidate()
    }
    
    @IBAction func reset(_ sender: Any) {
        print("reset")
        timer.invalidate()
        currTime = 210
        time.text = String(currTime)
        timer.invalidate()
    }
    @IBAction func minus10(_ sender: Any) {
        if currTime-10 > 0 {
            print("minus10")
            currTime-=10
            time.text = String(currTime)
        } else {
            print("can't go below 0")
        }
    }
    @IBAction func plus10(_ sender: Any) {
        print("plus10")
        currTime+=10
        time.text = String(currTime)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

