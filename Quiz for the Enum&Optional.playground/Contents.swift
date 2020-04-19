import UIKit

/*
 2개의 정수를 입력받아 Modulo 연산(%)의 결과를 반환하는 함수를 만들되
 2번째 파라미터와 결과값의 타입은 옵셔널로 정의.
 두 번째 파라미터 입력값으로 nil 이나 0이 들어오면 결과로 nil을 반환하고, 그 외에는 계산 결과 반환
 
 func calculateModulo(op1: Int, op2: Int?) -> Int? {
 }
 */

func calculateModulo1 (num1 : Int, num2: Int? ) -> Int? {
    var result = 0
    
    if (num2 == nil) || (num2 == 0) {
        return nil
    } else {
        result = num1 % num2!
    }
    return result
}
calculateModulo1(num1: 10, num2: 4)

// 반대로
func calculateModulo2(num1 : Int, num2 : Int?)->Int? {
    var result = 0
    
    if num2 != nil || num2 != 0 {
        result = num1 % num2!
    } else {
        return nil
    }
    return result
}
calculateModulo2(num1: 10, num2: 4)

// 방법 3
func calculateModulo3 (num1 : Int , num2 : Int?) -> Int? {

    
    guard (num2 == nil) && (num2 == 0) else {
        return 0
    }
    return  num1 % num2!
}
calculateModulo3(num1: 10, num2: 4)



// enum Month { case jan, feb } 정의하되 2월은 윤년인지 아닌지 정보를 저장할 수 있도록 구현
enum Month {
  case jan, feb(Bool)
}

let february = Month.feb(false)

switch february {
case .jan: break
case .feb(let isLeafYear):
    print(isLeafYear)
}





// 학점(A, B, C, D, F)을 enum 으로 표현하고 각 케이스에 알맞은 0.0 ~ 4.0 까지의 값 부여
enum Grade: Double {
  case A = 4.0, B = 3.0, C = 2.0, D = 1.0, F = 0.0
}

Grade.A
Grade.A.rawValue




// on 과 off 값을 가진 enum 타입 RemoteControl 을 정의하고, 그 내부에 호출 시마다 on, off 값을 바꿔주는 함수 구현
enum RemoteControl {
  case on, off

  mutating func toggle() {
    switch self {
    case .on:
      self = .off
    case .off:
      self = .on
    }
  }
}

var remoteControl = RemoteControl.on
remoteControl.toggle()
remoteControl.toggle()
