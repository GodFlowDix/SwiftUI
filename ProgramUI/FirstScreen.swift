//
//  FirstScreen.swift
//  ProgramUI
//
//  Created by Mike Dix on 6/27/19.
//  Copyright © 2019 Mike Dix. All rights reserved.
//

import UIKit

class FirstScreen: UIViewController {
    
let nextButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNextButton()
        view.backgroundColor = .red

    }
    
    func setupNextButton() {
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("NEXT", for: .normal)
        
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        setNextButtonConstraints()
    }
    
    @objc func nextButtonTapped() {
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
        
    }
    
    func setNextButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false  //means use autolayout
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor
            , constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
}
