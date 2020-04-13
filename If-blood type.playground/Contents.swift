import UIKit
// enum 과 if 문을 활용하여 혈액형 판별하기
enum Blood {
    case A
    case B
    case O
    case AB
}

var myblood = Blood.O
if myblood == Blood.A {
    print("A 형 입니다.")
} else if myblood == .B{
    print("B 형 입니다.")
} else if myblood == .O {
    print("O 형 입니다.")
} else if myblood == .AB {
    print("AB 형 입니다. ")
} else {
    print("알 수 없는 혈액형입니다.")
}


// if문에서 바인딩 사용하기. (if 문에서 상수에 값이 할당되는 방식을 바인딩 이라고 한다.).

func checkBlood (type : String) -> String? {
    if type == "A" || type == "O" {
        return "OK"
    }
    return nil
}

if let result = checkBlood(type: "O") {
    print("혈액 검사 결과 : \(result)")
} else {
    print("혈액 검사 결과 : nil")
}

// if 문 뒤에서 2개의 상수를 이용한 바인딩.

var sources = ["A", "B"]

if let result1 = checkBlood(type: sources[0]), let result2 = checkBlood(type: sources[1]) {
    print("혈액 검사 결과 : \(result1) , \(result2)")
} else {
    print("혈액 검사 결과는 nil 입니다.")
    }

