import UIKit

// for ~ in 문 뒤에 배열을 만들어 1 부터 5 까지 출력

var numbers = [1, 2, 3, 4, 5]

for value in numbers {
    print("for ~ in 배열의 원소 : \(value)")
}


// in 뒤에 딕셔너리를 이용

var orders = [1: "첫 번째", 2: "두 번째", 3: "세 번째", 4: "네 번째" , 5: "다섯 번째" ]

for (key,value) in orders {
    print("for ~ in 딕셔너리 원소 : \(key), \(value)")
}


// while 문

var i = 0

while (i < 5) {
    print("while 반복문 \(i)")
    i += 1
}


// repeat ~ while 문

i = 0

repeat {
    print("repeat ~ while 반복문 \(i)")
    i += 1
    
    if (i>5) {
        break;
    }
}while true
