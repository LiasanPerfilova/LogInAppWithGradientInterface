//
//  welcomeViewController.swift
//  number3
//
//  Created by Liaisan on 5/25/23.
//

import UIKit

class welcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor:primaryColor, bottomColor: secondaryColor) 
        
        welcomeLabel.text = "Welcome \(user)"
    }
    
}
    
    
    // MARK: - Set background color
extension UIView {
    
    func addVerticalGradientLayer(topColor:UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y:0)
        gradient.endPoint = CGPoint(x: 0, y:1)
        layer.insertSublayer(gradient, at: 0)
    }
}
