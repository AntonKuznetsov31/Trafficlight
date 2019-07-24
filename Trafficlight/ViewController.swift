//
//  ViewController.swift
//  Trafficlight
//
//  Created by Anton Kuznetsov on 7/24/19.
//  Copyright © 2019 AntonKuznetsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIImageView!
    @IBOutlet weak var yellowLight: UIImageView!
    @IBOutlet weak var greenLight: UIImageView!
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startUpdateUI()
    }
    
    override func viewWillLayoutSubviews() {
        makeCircles()
    }
    
    @IBAction func startButtonPressed() {
        
    }
    
    func startUpdateUI() {
        mainButton.setTitle("Start", for: .normal)
        redLight.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        redLight.alpha = 0.3
        yellowLight.backgroundColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        yellowLight.alpha = 0.3
        greenLight.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        greenLight.alpha = 0.3
    }
    
    func makeCircles() {
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        redLight.clipsToBounds = true
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        yellowLight.clipsToBounds = true
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        greenLight.clipsToBounds = true
    }
}
