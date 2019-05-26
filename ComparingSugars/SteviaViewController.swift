//
//  SteviaViewController.swift
//  ComparingSugars
//
//  Created by Thiago  Wlasenko Nicolau on 01/02/19.
//  Copyright © 2019 Thiago  Wlasenko Nicolau. All rights reserved.
//

import UIKit
import Stevia

class SteviaViewController: UIViewController {
    
    let blueView = UIView(frame: .zero)
    let orangeView = UIView(frame: .zero)
    let redView = UIView(frame: .zero)
    let blackView = UIView(frame: .zero)
    let yellowView = UIView(frame: .zero)
    let greenView = UIView(frame: .zero)
    
    let nome: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.setupViews()
        
        self.view.sv(
            blueView,
            blackView,
            yellowView
        )
        
        yellowView.sv(
                orangeView
        )
        
        blackView.sv(
            redView,
            greenView
        )
        
        
        let navHeight = UIApplication.shared.statusBarFrame.height + (self.navigationController?.navigationBar.frame.height ?? 0)
        
        self.view.layout(
            20 + navHeight,
            |-20-blueView-20-|,
            20,
            |-40-yellowView-40-|,
            20,
            |blackView|,
            0
        )
        
        redView.top(30%)
        redView.bottom(30%)
        redView.left(15%)
        redView.width(30%)
        
        greenView.Width == redView.Width
        greenView.Height == redView.Height * 0.4
        greenView.right(15%)
        
        redView.Top == greenView.Top
        
        blueView.height(40)
        yellowView.height(200)
        orangeView.fillContainer(40)
    }
    
    func setupViews() {
        self.blueView.backgroundColor = .blue
        self.orangeView.backgroundColor = .orange
        self.redView.backgroundColor = .red
        self.blackView.backgroundColor = .black
        self.yellowView.backgroundColor = .yellow
        self.greenView.backgroundColor = .green
    }
}
