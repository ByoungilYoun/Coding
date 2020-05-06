//
//  ViewController.swift
//  Label_TextField_Practice
//
//  Created by 윤병일 on 2020/05/04.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
// 텍스트 필드에 어떤 값을 입력하면 별도의 Label 에 입력된 텍스트 표시.
//> 텍스트 필드가 활성화 되어 있을 땐 Label 의 텍스트 색상이 파란색이고, Font 크기는 40
//> 텍스트 필드가 비활성화되면 Label 텍스트 색상이 빨간색이고, Font 크기는 20
//  문제: 텍스트필드에 10글자까지만 입력되고 그 이상은 입력되지 않도록 하기

import UIKit

class ViewController: UIViewController {

        private var label1 = UILabel()
        private var textField1 = UITextField()
        
        override func viewDidLoad() {
            super.viewDidLoad()

            writeOnLabel()
            writeOnTextField()
            
            
        }
        

        private func writeOnLabel(){
            label1.frame = CGRect(x: 30, y: 100, width: 250, height: 40)
            label1.backgroundColor = .lightGray
            view.addSubview(label1)
            
        }
        
        private func writeOnTextField(){
            textField1.frame = CGRect(x: 30, y: 200, width: 200, height: 40)
            textField1.font = UIFont.preferredFont(forTextStyle: .title2)
            textField1.placeholder = "입력하시오"
            textField1.borderStyle = .roundedRect
            textField1.backgroundColor = .systemBackground
            textField1.becomeFirstResponder()
            view.addSubview(textField1)
            
            textField1.addTarget(self, action: #selector(textfieldEditingDidBegin), for: .editingDidBegin)
            
            textField1.addTarget(self, action: #selector(textfieldEditingChanged), for: .editingChanged)
            textField1.addTarget(self, action: #selector(textfieldDidEndOnExit), for: .editingDidEndOnExit)
            textField1.addTarget(self, action: #selector(textfieldEditingDidEnd), for: .editingDidEnd)

    //        textField1.resignFirstResponder()
        
        }
        
        
        @objc func textfieldEditingDidBegin(){
            label1.textColor = .blue
            label1.font = .boldSystemFont(ofSize: 40)
        }
        

        @objc func textfieldEditingChanged(){
            if textField1.text!.count <= 10 {
                label1.text = "\(textField1.text!)"
            } else {
                self.textField1.text = ""
                self.label1.text = ""
            }
        }
        

        @objc func textfieldDidEndOnExit(){
            self.label1.text = "\(textField1.text!)"
            
        }
        @objc func textfieldEditingDidEnd(){
               self.label1.textColor = .red
               self.label1.font = .boldSystemFont(ofSize: 20)
           }
     
    }
