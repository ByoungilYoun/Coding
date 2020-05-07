//
//  ViewController.swift
//  Delegate_TextField
//
//  Created by 윤병일 on 2020/04/29.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    
    
    @IBOutlet var tf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tf.placeholder = "값을 입력하세요." // 안내 메세지
        self.tf.keyboardType = UIKeyboardType.alphabet // 키보드 타입 영문자 패드로
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark // 키보드 스타일 어둡게
        self.tf.returnKeyType = UIReturnKeyType.join // 리턴타입은 "Join?
        self.tf.enablesReturnKeyAutomatically = true // 리턴키 자동 활성화 "On"
        
        
        // 테두리 스타일 - 직선
        self.tf.borderStyle = UITextField.BorderStyle.line
        // 배경 색상
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0)
        // 수직 방향으로 텍스트가 가운데 정렬되도록
        self.tf.contentVerticalAlignment = .center
        // 수평 방향으로 텍스타가 가운데 정렬되도록
        self.tf.contentHorizontalAlignment = .center
        // 테두리 색상을 회색으로
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        // 테두리 두께 설정 (단위 : pt)
        self.tf.layer.borderWidth = 2.0
        
        self.tf.becomeFirstResponder()

        self.tf.delegate = self
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 시작됩니다.")
        return true
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작되었습니다.")
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 내용이 삭제됩니다.")
        return true
    }
    
    func textField(_ textField : UITextField, shouldChangeCharactersIn rage : NSRange, replacementString string : String) -> Bool {
        print("텍스트 필드의 내용이 \(string)으로 변경됩니다.")
        if Int(string) == nil {
            return true
        } else {
            return false
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("텍스트 필드의 리턴키가 눌러졌습니다.")
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 종료됩니다.")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 종료되었습니다.")
    }
    
    

    @IBAction func confirm(_ sender: Any) {
        
        tf.resignFirstResponder()
        
    }
    
    
    @IBAction func input(_ sender: Any) {
        self.tf.becomeFirstResponder()
        
    }
    

    
    
}

