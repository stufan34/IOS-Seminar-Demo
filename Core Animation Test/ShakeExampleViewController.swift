//
//  ShakeExampleViewController.swift
//  Core Animation Test
//
//  Created by Süeda Tufan on 14.11.26.
//

import UIKit
class ShakeExampleViewController: UIViewController {
    
    let passwordField = UITextField()
    let correctPassword = "Password"
    let button = UIButton(type: .system)
    
    
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
        
        
        passwordField.layer.borderWidth = 0.5
        passwordField.layer.cornerRadius = 10
        
        passwordField.placeholder = " Enter password"
        passwordField.isSecureTextEntry = true
        
        view.addSubview(passwordField)
        
        button.frame = CGRect(
            x: 150,
            y: 460,
            width: 100,
            height: 40
        )
        
        button.setTitle("Log in", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(checkPassword), for: .touchUpInside)
        
        view.addSubview(button)
        
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


  @objc private func checkPassword(){
     if passwordField.text == correctPassword{
         print("Correct Password")
     } else {
        shakeAnimation()
    }
  }
}
    
        
        
        
    

