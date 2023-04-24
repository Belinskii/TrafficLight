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
    
    let on = 1.0
    let off = 0.3
    var tapCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.frame.size.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.height / 2
    }

    @IBAction func startButtonTapped() {
        
        tapCounter += 1
        startButton.setTitle("NEXT", for: .normal)
        redLight.alpha = off
        yellowLight.alpha = off
        greenLight.alpha = off
        
        switch tapCounter {
        case 1:
            redLight.alpha = on
        case 2:
            yellowLight.alpha = on
        default:
            greenLight.alpha = on
            tapCounter = 0
        }
        
    }
    
}

