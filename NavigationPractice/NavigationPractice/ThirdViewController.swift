//
//  ThirdViewController.swift
//  NavigationPractice
//
//  Created by 윤병일 on 2020/05/08.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    lazy var button3 = UIBarButtonItem(title: "네번째 화면", style: .plain, target: self, action: #selector(moveToFourthPage(_:)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        title = "세번째 화면"
        
        navigationItem.rightBarButtonItems = [button3]

        
    }
    
    @objc func moveToFourthPage (_ sender : Any) {
        let fourthVC = FourthViewController()
        
        navigationController?.pushViewController(fourthVC, animated: true)
    }
    

   
}
