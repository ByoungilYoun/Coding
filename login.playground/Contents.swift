import UIKit

// 로그인 기능을 담당하는 함수.
let userId = "jimmy7525"
let userPassword = "123456"

func login (id : String, password : String) -> Bool {
    if id == userId && password == userPassword {
        return true
    } else {
        return false
    }
}

var inputId = "jimmy7525"
var inputPassword = "123456"

var result = login(id: inputId, password: inputPassword)
print("결과 : \(result)")
