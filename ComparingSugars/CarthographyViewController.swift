//
//  CarthographyViewController.swift
//  ComparingSugars
//
//  Created by Thiago  Wlasenko Nicolau on 19/02/19.
//  Copyright © 2019 Thiago  Wlasenko Nicolau. All rights reserved.
//

import UIKit
import Cartography

class CarthographyViewController : UIViewController {
    
    let blueView = UIView(frame: .zero)
    let orangeView = UIView(frame: .zero)
    let redView = UIView(frame: .zero)
    let blackView = UIView(frame: .zero)
    let yellowView = UIView(frame: .zero)
    let greenView = UIView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViews()
        
        self.view.backgroundColor = .white
        
        let navHeight = UIApplication.shared.statusBarFrame.height + (self.navigationController?.navigationBar.frame.height ?? 0)
        
        constrain(self.view, blueView) { superView, blueView in
            
            blueView.top == superView.top + (20 + navHeight)
            blueView.leading == superView.leading + 20
            blueView.trailing == superView.trailing - 20
            blueView.height == 40
        }
        
        constrain(blueView, yellowView) { blueView, yellowView in
            
            yellowView.top == blueView.bottom + 20
            yellowView.leading == blueView.leading + 20
            yellowView.trailing == blueView.trailing - 20
            yellowView.height == 200
        }
        
        constrain(yellowView, orangeView) { yellowView, orangeView in
            
            yellowView.centerX == orangeView.centerX
            yellowView.centerY == orangeView.centerY
            orangeView.width == yellowView.width - 80
            orangeView.height == yellowView.height - 80
        }
        
        constrain(yellowView, blackView) { yellowView, blackView in
            
            blackView.top == yellowView.bottom + 20
        }
        
        constrain(self.view, blackView) { superView, blackView in
            
            blackView.bottom == superView.bottom
            blackView.leading == superView.leading
            blackView.trailing == superView.trailing
        }
        
        constrain(blackView, redView) { blackView, redView in
            
            redView.top == blackView.top + (blackView.height * 0.7)
            redView.bottom == blackView.bottom * 0.3
            redView.leading == blackView.leading * 0.15
            redView.width == blackView.width * 0.3
        }
    }
    
    
    func setupViews() {
        self.blueView.backgroundColor = .blue
        self.orangeView.backgroundColor = .orange
        self.redView.backgroundColor = .red
        self.blackView.backgroundColor = .black
        self.yellowView.backgroundColor = .yellow
        self.greenView.backgroundColor = .green
        
        self.view.addSubview(blueView)
        self.view.addSubview(blackView)
        self.view.addSubview(yellowView)
        
        self.yellowView.addSubview(self.orangeView)
        
        self.blackView.addSubview(redView)
        self.blackView.addSubview(greenView)
    }
}
