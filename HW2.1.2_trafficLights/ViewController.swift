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
        red.layer.cornerRadius = red.frame.size.width / 2
        yellow.layer.cornerRadius = yellow.bounds.width / 2
        green.layer.cornerRadius = green.bounds.width / 2
        buttonStart.layer.cornerRadius = 10
        
    }

    @IBAction func switchLight() {
    }
    
}

