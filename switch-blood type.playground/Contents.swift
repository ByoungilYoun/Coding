import UIKit

// switch 문을 이용한 혈액형 판별
enum Blood {
    case A
    case B
    case O
    case AB
}

var myblood = Blood.O

switch myblood {
    case .A :
        print("A 형 입니다.")
    case .B :
        print("B 형 입니다.")
    case .O :
        print("O 형 입니다.")
    case .AB :
        print("AB 형 입니다.")
}


// switch 문의 비교 대상에는 여러개의 값이 들어갈 수 있고, 범위 값이 들어갈 수도 있다.
var age = 10

switch age {
case 0,1,2 :
    print("유아")
case 3..<13 :
    print("소아")
case 13..<19 :
    print("청소년")
default :
    print("성인")
}

// 투플로 만들어진 값을 비교

var score = (3,2)

switch score {
case (1,1) :
    print("점수가 1,1 입니다.")
case (1,2) :
    print("점수가 1,2 입니다.")
case (2, _) :
    print("점수가 2, _ 입니다.")
default :
    print("알 수 없는 점수입니다.")
}


// case 키워드 뒤에서 비교하는 대상의 값을 상수로 바인딩하여 사용할때

switch score {
    case (1, let y) :
    print("점수가 1, \(y) 입니다.")
case (2, let y) :
    print("점수가 2, \(y) 입니다.")
case (let x, let y) :
    print("점수가 \(x), \(y)입니다.")
}

//투플의 두 개 값을 모두 상수로 바인딩하여 사용하고 싶다면 where 조건을 함께 사용할 수 있다.

switch score {
case let(x,y) where x > 0 :
    print("x 가 0보다 크고 \(x), \(y) 입니다.")
case let (x,y) where x <= 0 :
    print("x 가 0보다 작거나 같고 \(x),\(y) 입니다.")
default :
    print("x,y 판단할 수 없습니다.")
}
