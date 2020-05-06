//
//  ViewController.swift
//  Msg-AlertController
//
//  Created by 윤병일 on 2020/04/28.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBOutlet var result: UILabel!
    
    // 알림창 실행
    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .alert) // .actionSheet, .alert 두가지가 있다.
        
        let cancel = UIAlertAction(title: "취소", style: .cancel){(_) in
            self.result.text = "취소 버튼을 클릭했습니다."
        }
        let ok = UIAlertAction(title: "확인", style: .default){(_) in
            self.result.text = "확인 버튼을 클릭했습니다."
        }
        let exec = UIAlertAction(title: "실행", style: .destructive){(_) in
            self.result.text = "실행 버튼을 클릭했습니다."
        }
        let stop = UIAlertAction(title: "중지", style: .default){(_) in
            self.result.text = "중지 버튼을 클릭했습니다."
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        // cancel 은 순서 상관없이 무조건 맨 밑으로 나온다.
        
        self.present(alert, animated: false)
    }

    // 로그인
    
    @IBAction func login(_ sender: Any) {
        
        let title = "iTunes Store에 로그인"
        let message = "사용자의 Apple ID jimmy7525@naver.com 의 암호를 입력하시오"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default){(_) in
            if let textfield = alert.textFields?.first{
                print("입력된 값은 \(textfield.text!) 입니다.")
            } else {
                print("입력된 값이 없습니다.")
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        alert.addTextField { (textfield) in
            textfield.placeholder = "암호"
            textfield.isSecureTextEntry = true
        }
        
        self.present(alert, animated: true)
        
    }
    
    // 사용자 인증
    @IBAction func auth(_ sender: Any) {
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default){(_) in
            
            let loginId = alert.textFields?[0].text
            let loginPw = alert.textFields?[1].text
            
            if loginId == "jimmy7525" && loginPw == "7525" {
                self.result.text = "인증되었습니다."
            } else {
                self.result.text = "인증에 실패하였습니다."
            }
            
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        alert.addTextField { (tf) in
            tf.placeholder = "아이디"
            tf.isSecureTextEntry = false
        }
        
        alert.addTextField { (tf) in
            tf.placeholder = "비밀번호"
            tf.isSecureTextEntry = true
        }
        
        self.present(alert, animated: true)
    }
    
}

