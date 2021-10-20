//
//  ViewController.swift
//  HW2.1.2_trafficLights
//
//  Created by Всеволод Кондратьев on 21.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var red: UIView!
    @IBOutlet var yellow: UIView!
    @IBOutlet var green: UIView!
    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.alpha = 0.3
        yellow.alpha = 0.3
        green.alpha = 0.3
        buttonStart.layer.cornerRadius = 10
        
    }
    override func viewWillLayoutSubviews(){
        red.layer.cornerRadius = red.frame.size.width / 2
        yellow.layer.cornerRadius = yellow.bounds.width / 2
        green.layer.cornerRadius = green.bounds.width / 2
    }

    @IBAction func switchLight() {
        buttonStart.setTitle("NEXT", for: .normal)
        
        if red.alpha == 1 {
            red.alpha = 0.3
            yellow.alpha = 1
            return
        } else if yellow.alpha == 1 {
            yellow.alpha = 0.3
            green.alpha = 1
            return
        } else if green.alpha == 1 {
            green.alpha = 0.3
            red.alpha = 1
            return
        } else {
            red.alpha = 1
        }
    }
    
}

