//
//  AnimationViewController.swift
//  MyApp
//
//  Created by Süeda Tufan on 08.11.26.
//

import UIKit

class AnimationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("AnimationViewController loaded")

        view.backgroundColor = .white
        setupExampleLayer()
        setupBlueLayer()
        setupGreenLayer()
    }

    private func setupExampleLayer() {

        let exampleLayer = CALayer()

        exampleLayer.frame = CGRect(
            x: 30,
            y: 200,
            width: 100,
            height: 100
        )

        exampleLayer.backgroundColor =
            UIColor.systemRed.cgColor

        exampleLayer.cornerRadius = 50

        view.layer.addSublayer(exampleLayer)

        applyAnimation(to: exampleLayer)
    }

    
    private func applyAnimation(to layer: CALayer) {
        // To move the position
       
        let positionAnimation = CABasicAnimation(keyPath: "position")
        positionAnimation.fromValue = CGPoint(x: 80, y: 200)
        positionAnimation.toValue = CGPoint(x: 80, y: 850)
        positionAnimation.duration = 1
        positionAnimation.repeatCount = .infinity
        positionAnimation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        positionAnimation.autoreverses = true

        layer.add(positionAnimation, forKey: "positionAnimation")
    }
    
    private func setupBlueLayer(){
        
        let blueCircle = CALayer()
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
        scaleAnimation.toValue = 1.3
        scaleAnimation.duration = 1
        scaleAnimation.repeatCount = .infinity
        scaleAnimation.autoreverses = true
        scaleAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)

        blueCircle.add(scaleAnimation, forKey: "scale")
        
    }
    
    private func setupGreenLayer(){

        let greenCircle = CALayer()
        greenCircle.frame = CGRect(
            x: 270,
            y: 200,
            width: 100,
            height: 100
        )
        
        greenCircle.backgroundColor =
            UIColor.systemGreen.cgColor

        greenCircle.cornerRadius = 50
        
        view.layer.addSublayer(greenCircle)
        
        let opacityAnimation = CABasicAnimation(
                    keyPath: "opacity")
        
        opacityAnimation.fromValue = 1.0
        opacityAnimation.toValue = 0
        opacityAnimation.duration = 1
        opacityAnimation.repeatCount = .infinity
        opacityAnimation.autoreverses = true
        opacityAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)

        greenCircle.add(opacityAnimation, forKey: "opacity")
        
    }
    
    
}

