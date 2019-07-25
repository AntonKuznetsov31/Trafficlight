//
//  ViewController.swift
//  Trafficlight
//
//  Created by Anton Kuznetsov on 7/24/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

enum Trafficlight {
    case red
    case yellow
    case green
    case off
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var currentTrafficLight = Trafficlight.off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.setTitle("Start", for: .normal)
        createTrafficlight()
        
    }
    
    override func viewWillLayoutSubviews() {
        makeTrafficLightRound()
    }
    
    @IBAction func startButtonPressed() {
        switch currentTrafficLight {
        case .off:
            startButton.setTitle("Next", for: .normal)
            redLight.turnOn()
            currentTrafficLight = .red
        case .red:
            redLight.turnOff()
            yellowLight.turnOn()
            currentTrafficLight = .yellow
        case .yellow:
            yellowLight.turnOff()
            greenLight.turnOn()
            currentTrafficLight = .green
        case .green:
            greenLight.turnOff()
            redLight.turnOn()
            currentTrafficLight = .red
        }
    }
    
    private func createTrafficlight() {
        redLight.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        redLight.alpha = 0.3
        redLight.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        redLight.layer.borderWidth = 2
        
        yellowLight.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        yellowLight.alpha = 0.3
        yellowLight.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        yellowLight.layer.borderWidth = 2
        
        greenLight.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        greenLight.alpha = 0.3
        greenLight.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        greenLight.layer.borderWidth = 2
    }
    
    private func makeTrafficLightRound() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
}

extension UIView {
    func turnOff() {
        self.alpha = 0.3
    }
    
    func turnOn() {
        self.alpha = 1
    }
}
