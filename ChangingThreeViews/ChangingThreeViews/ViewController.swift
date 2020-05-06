//
//  ViewController.swift
//  ChangingThreeViews
//
//  Created by 윤병일 on 2020/05/04.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    private var button1 = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        button1Clicked()
    }

    private func button1Clicked () {
        button1.setTitle("다음 화면", for: .normal)
        button1.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button1.sizeToFit()
        button1.center = view.center
        button1.setTitleColor(.blue, for: .normal)
        button1.backgroundColor = .cyan
        button1.addTarget(self, action: #selector(moveSecondView), for: .touchUpInside)
        view.addSubview(button1)
    }
    
    @objc func moveSecondView () {
        let secondVC = SecondViewController()
        
        secondVC.modalPresentationStyle = .automatic
        secondVC.view.backgroundColor = .brown
        
        present(secondVC, animated: true)
        
    }
    

}

