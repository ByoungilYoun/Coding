//
//  SecondViewController.swift
//  NavigationPractice
//
//  Created by 윤병일 on 2020/05/08.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    lazy var button2 = UIBarButtonItem(title: "세번째 화면", style: .plain, target: self, action: #selector(moveToThirdPage(_:)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        
        title = "두번째 화면"
        
        navigationItem.rightBarButtonItems = [button2]

    }
    
    @objc func moveToThirdPage (_ sender : Any) {
        let thirdVC = ThirdViewController()
        
        navigationController?.pushViewController(thirdVC, animated: true)
        
    }
    

    @IBAction func unwindToSecondPage(_ unwindSegue: UIStoryboardSegue) {

    }
   

}
