//
//  SecondViewController.swift
//  ChangingThreeViews
//
//  Created by 윤병일 on 2020/05/04.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    private var button2 = UIButton(type: .system)
    private var button3 = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        moveNextView()
        moveFirstView()
       
    }
    
    private func moveNextView() {
        button2.setTitle("다음 화면", for: .normal)
        button2.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button2.sizeToFit()
        button2.center = CGPoint(x: view.center.x, y: 300)
        button2.setTitleColor(.blue, for: .normal)
        button2.backgroundColor = .cyan
        button2.addTarget(self, action: #selector(moveThirdView), for: .touchUpInside)
        view.addSubview(button2)
    }
    
    private func moveFirstView(){
        button3.setTitle("이전 화면", for: .normal)
        button3.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button3.sizeToFit()
        button3.center = CGPoint(x: view.center.x, y: 400)
        button3.setTitleColor(.red, for: .normal)
        button3.backgroundColor = .cyan
        button3.addTarget(self, action: #selector(moveBackView), for: .touchUpInside)
               view.addSubview(button3)
    }
    
    @objc func moveThirdView () {
        let thirdVC = ThirdViewController()
        
        thirdVC.modalPresentationStyle = .automatic
        thirdVC.view.backgroundColor = .green
        
        self.present(thirdVC, animated: true)
    }
    
    @objc func moveBackView(){
        self.dismiss(animated: true)
    }
    
}
