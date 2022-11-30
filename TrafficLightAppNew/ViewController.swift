//
//  ViewController.swift
//  TrafficLightAppNew
//
//  Created by Work on 30.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var changeButton: UIButton!
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeButton.layer.cornerRadius = 15
        
        redView.alpha = lightOff
        yellowView.alpha = lightOff
        greenView.alpha = lightOff
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let cornerRadius = redView.bounds.height * 0.5
        
        redView.layer.cornerRadius = cornerRadius
        yellowView.layer.cornerRadius = cornerRadius
        greenView.layer.cornerRadius = cornerRadius
        
    }

    @IBAction func buttonPressed() {
        
        if greenView.alpha == lightOn {
            redView.alpha = lightOn
            greenView.alpha = lightOff
        } else if redView.alpha == lightOn {
            yellowView.alpha = lightOn
            redView.alpha = lightOff
        } else if yellowView.alpha == lightOn {
            greenView.alpha = lightOn
            yellowView.alpha = lightOff
        } else {
            redView.alpha = lightOn
            changeButton.setTitle("NEXT", for: .normal)
        }
        
    }
    
    
}

