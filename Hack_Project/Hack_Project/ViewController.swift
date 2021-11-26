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
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
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
        let tabBarVC = UITabBarController()
        
        let vc1 = FinancialAppsViewController()
        let vc2 = MainViewController()
        let vc3 = ChatViewController()
        let vc4 = ProfileViewController()
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let icons = ["square.grid.2x2.fill","house.fill","bubble.right.fill","person.fill"]
        
        for x in 0..<items.count{
            items[x].image = UIImage(systemName: icons[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: false)
    }
    
}

