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



    /*let blueCircle = CALayer()
     blueCircle.frame = CGRect(
         x: 150,
         y: 200,
         width: 100,
         height: 100
     )
     
     blueCircle.backgroundColor =
         UIColor.systemBlue.cgColor

     blueCircle.cornerRadius = 50
     
     view.layer.addSublayer(blueCircle)
     
     let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
     
     scaleAnimation.fromValue = 1.0
     scaleAnimation.toValue = 1.2
     scaleAnimation.duration = 1
     scaleAnimation.repeatCount = .infinity
     scaleAnimation.autoreverses = true
     scaleAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)

     blueCircle.add(scaleAnimation, forKey: "scale")*/
    
        
        
        
    

