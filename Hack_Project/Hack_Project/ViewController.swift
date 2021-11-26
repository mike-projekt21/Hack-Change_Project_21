//
//  ViewController.swift
//  Hack_Project
//
//  Created by Михаил Попов on 26.11.2021.
//

import UIKit
import PinLayout

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
//        self.navigationController?.navigationBar.barTintColor = .clear
//        self.hideNavigationBar()
        
        setup()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        button.pin
            .width(125)
            .height(70)
            .center()
        
    }
    
    private func setup() {
        view.addSubview(button)
        //[headerView, tableView, reminderIcon].forEach{ self.view.addSubview($0) }
        
        button.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
    }
    
    @objc
    private func didTabButton() {
        
    }
    
}

