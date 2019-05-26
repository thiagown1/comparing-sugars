//
//  ViewController.swift
//  ComparingSugars
//
//  Created by Thiago  Wlasenko Nicolau on 01/02/19.
//  Copyright © 2019 Thiago  Wlasenko Nicolau. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let steviaButton = SugarButton(title: "Stevia", color: .green)
    let cartographyButton = SugarButton(title: "Cartography", color: .red)
    let snapkitButton = SugarButton(title: "SnapKit", color: .yellow)
    let easyPeasyButton = SugarButton(title: "EasyPeasy", color: .cyan)
    let tinyConstraintButton = SugarButton(title: "TinyConstraint", color: UIColor.purple.withAlphaComponent(0.8))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.addSubview(self.steviaButton)
        self.view.addSubview(self.cartographyButton)
        self.view.addSubview(self.snapkitButton)
        self.view.addSubview(self.easyPeasyButton)
        self.view.addSubview(self.tinyConstraintButton)
    
        self.setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setupViews() {
        
        self.steviaButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.steviaButton.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.steviaButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        self.steviaButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3).isActive = true
        
        self.cartographyButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.cartographyButton.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.cartographyButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        self.cartographyButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3).isActive = true
        
        self.snapkitButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.snapkitButton.topAnchor.constraint(equalTo: self.steviaButton.bottomAnchor).isActive = true
        self.snapkitButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        self.snapkitButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3).isActive = true
        
        self.easyPeasyButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.easyPeasyButton.topAnchor.constraint(equalTo: self.cartographyButton.bottomAnchor).isActive = true
        self.easyPeasyButton.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        self.easyPeasyButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3).isActive = true
        
        self.tinyConstraintButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.tinyConstraintButton.topAnchor.constraint(equalTo: self.easyPeasyButton.bottomAnchor).isActive = true
        self.tinyConstraintButton.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        self.tinyConstraintButton.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3).isActive = true
        
        self.steviaButton.addTarget(self, action: #selector(handleTap(_:)), for: .touchUpInside)
        self.cartographyButton.addTarget(self, action: #selector(handleTap(_:)), for: .touchUpInside)
        
    }

    @objc
    func handleTap(_ button: UIButton) {
        self.navigationController?.isNavigationBarHidden = false
        
        switch button {
        case self.steviaButton:
            let steviaViewController = SteviaViewController()
        self.navigationController?.pushViewController(steviaViewController, animated: true)
            
        case self.cartographyButton:
            let carthographyViewController = CarthographyViewController()
            self.navigationController?.pushViewController(carthographyViewController, animated: true)
            
            
        case self.snapkitButton:break
            
        case self.cartographyButton:break
            
        case self.tinyConstraintButton:break
            
        default:break
            
        
        }
        
    }

}



class SugarButton : UIButton {
    
    convenience init(title: String, color: UIColor) {
        self.init(frame: .zero)
        
        self.backgroundColor = color
        self.setTitle(title, for: .normal)
        
        self.setup()
    }
    
    func setup() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 20)
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.minimumScaleFactor = 0.5
        
        self.layoutIfNeeded()
    }
    
    
}
