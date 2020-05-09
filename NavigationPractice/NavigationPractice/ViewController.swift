//
//  ViewController.swift
//  NavigationPractice
//
//  Created by 윤병일 on 2020/05/08.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var button1 = UIBarButtonItem(title: "다음화면", style: .plain, target: self, action: #selector(pushViewController(_:)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
 // navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "첫번째화면"
        
//        let button1 = UIBarButtonItem(title: "다음화면", style: .plain, target: self, action: #selector(pushViewController(_:)))
        
        navigationItem.rightBarButtonItems = [button1]
       
    }
    
    @objc func pushViewController(_ sender : Any ) {
        let secondVC = SecondViewController()
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    
    
    
    
    
    
    
    
    @IBAction func unwindToFirstPage(_ unwindSegue: UIStoryboardSegue) {
 
    }
    
    @IBAction func unwindToFirstPage2(_ unwindSegue: UIStoryboardSegue) {
      
    }


}

