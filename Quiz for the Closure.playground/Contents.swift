import UIKit

// 1. 문자열을 입력받으면 그 문자열의 개수를 반환하는 클로져 구현

let countString1 : (String) -> Int = { message1 in
    return message1.count
}
countString1("HelloWorld")


let countString2 = {(message2 : String) -> Int in
    return message2.count
}
countString2("Hi")


let countString3 : (String) -> Int = {
    $0.count
}
countString3("Jimmy")

// 2. 숫자 하나를 입력받은 뒤 1을 더한 값을 반환하는 클로져 구현

let addOnemore1 : (Int) -> Int = { num in
    return num + 1
}
addOnemore1(4)


let addOneMore2 = {(num : Int) -> Int in
    return num + 1
}
addOneMore2(2)


let addOneMore3 : (Int) -> Int = {
    $0 + 1
}
addOneMore3(9)


// 3. 정수를 하나 입력받아 2의 배수 여부를 반환하는 클로져

let isThisDoubleNum1 : (Int) -> Bool = { num in
    return num % 2 == 0
}
isThisDoubleNum1(5)


let isThisDoubleNum2 = {(num : Int) -> Bool in
    return num % 2 == 0
}
isThisDoubleNum2(8)


let isThisDoubleNum3 : (Int) -> Bool = {
    $0 % 2 == 0
}
isThisDoubleNum3(22)


// 4. 정수를 두 개 입력 받아 곱한 결과를 반환하는 클로져

let multiplyTwoNum1 : (Int,Int) -> Int = {num1 , num2 in
    return num1 * num2
}
multiplyTwoNum1(10,20)


let multiplyTwoNum2 = {(num1 :Int, num2:Int) -> Int in
    return num1 * num2
}
multiplyTwoNum2(10,5)


let multiplyTwoNum3 : (Int,Int) -> Int = {
    $0 * $1
}
multiplyTwoNum3(3,9)




