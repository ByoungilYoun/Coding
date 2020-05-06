//
//  ThirdViewController.swift
//  ChangingThreeViews
//
//  Created by 윤병일 on 2020/05/04.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    private var button4 = UIButton(type: .system)
    private var button5 = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        goBackWard()
        goFirstPage()
    }
    

    func goBackWard(){
        button4.setTitle("이전 화면", for: .normal)
        button4.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button4.sizeToFit()
        button4.center = CGPoint(x: view.center.x, y: 300)
        button4.setTitleColor(.red, for: .normal)
        button4.backgroundColor = .cyan
        button4.addTarget(self, action: #selector(moveBackView), for: .touchUpInside)
        view.addSubview(button4)
    }
    
    func goFirstPage(){
        button5.setTitle("처음 화면", for: .normal)
        button5.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button5.sizeToFit()
        button5.center = CGPoint(x: view.center.x, y: 400)
        button5.setTitleColor(.black, for: .normal)
        button5.backgroundColor = .cyan
        button5.addTarget(self, action: #selector(moveFirstView), for: .touchUpInside)
        view.addSubview(button5)
    }
    
    @objc func moveBackView(){
        dismiss(animated : true)
    }
    
    @objc func moveFirstView(){
        presentingViewController?.presentingViewController?.dismiss(animated : true)
    }

}
