import UIKit

// 조건 연산자를 이용한 연습.

var count = 10

var result = (count > 10) ? true : false
print(result)

// 조건 연산자를 사용해 옵셔널 자료형으로 된 변수에 값을 할당.
var count2 = 30

var result2 : String? = (count2 > 20) ? "success" : nil

if result2 == nil {
    print("result2 변수의 값은 nil 입니다.")
} else {
    print("result2 변수의 값은 \(result2!)")
}


// 전달 받은 어떤 변수의 자료형을 모를 때 자료형을 확인할 수 있도록 제공되는 연산자 is

if count is Int {
    print("count 변수의 자료형은 Int 입니다.")
} else {
    print("count 변수의 자료형은 Int 가 아닙니다.")
}
