//
//  ShakeExampleViewController.swift
//  Core Animation Test
//
//  Created by Süeda Tufan on 14.11.26.
//

import UIKit
class ShakeExampleViewController: UIViewController {
    
    private let passwordField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPasswordLayer()
    }
    
    
    private func setupPasswordLayer(){
        passwordField.frame = CGRect(
            x: 100,
            y: 400,
            width: 200,
            height: 40
        )
        
        
        passwordField.layer.borderWidth = 1
        passwordField.layer.cornerRadius = 10
        
        passwordField.placeholder = "Enter password"
        passwordField.isSecureTextEntry = true
        
        view.addSubview(passwordField)
        
        shakeAnimation()
    }
    
    private func shakeAnimation(){
        let animation = CAKeyframeAnimation()
        animation.keyPath = "position.x"
        animation.values = [0, 10, -10, 10, 0]
        animation.keyTimes = [0, 0.16, 0.5, 0.83, 1]
        animation.duration = 0.4
        
        animation.isAdditive = true
        //animation.repeatCount = .infinity
        passwordField.layer.add(animation, forKey: "shake")
    }
}

    
    
        
        
        
    

