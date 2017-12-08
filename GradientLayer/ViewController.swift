//
//  ViewController.swift
//  GradientLayer
//
//  Created by Aman Gupta on 08/12/17.
//  Copyright © 2017 DebeloperFly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gradientLayer = CAGradientLayer()

    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        createCAGradientLayer()
        animatedView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Gradient Layer configure function Confiure function
    func createCAGradientLayer() {
        gradientLayer.frame = self.view.bounds
        let blue = UIColor.red.cgColor
        let organge = UIColor.purple.cgColor
        let pink = UIColor.yellow.cgColor
        gradientLayer.locations = [0.0, 0.50, 1.0]
        gradientLayer.colors = [blue, organge, pink]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)
        self.view.layer.addSublayer(gradientLayer)
    }
    
    
    func animatedView() {
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = [0.0, 0.0, 0.25]
        animation.toValue = [0.75, 1.0, 1.0]
        animation.duration = 3.0
        animation.autoreverses =  true
        animation.repeatCount =  Float.infinity
        self.gradientLayer.add(animation, forKey: nil)
    }

}

