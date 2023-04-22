//
//  ViewController.swift
//  TrafficLight
//
//  Created by Марина Иванова on 22.04.2023.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
    }

    @IBAction func startButtonTapped() {
    }
    
}

