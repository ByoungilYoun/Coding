import UIKit

//1)학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
func gradeChange (score : Double) -> String {
    if score >= 4.5 {
        return "A+"
    } else if score >= 4.0 {
        return "A"
    } else if score >= 3.5 {
        return "B+"
    } else if score >= 3.0 {
        return "B"
    } else if score >= 2.5{
        return "C+"
    } else {
        return "C"
    }
}

gradeChange(score: 2.5)

func gradeToScore (score : Double ) -> String {
    switch score {
    case 4.5 :
        return "A+"
    case 4.0 :
        return "A"
    case 3.5 :
        return "B+"
    case 3.0 :
        return "B"
    case 2.5 :
        return "C+"
    default :
        return "F"
    }
}

gradeToScore(score: 3.0)



    
//2) 특정 달을 숫자로 입력 받아서 문자열로 반환하는 함수 (1 = "Jan" , 2 = "Feb", ...)

func showMonth (month : Int) -> String {
    
    switch month {
    case 1 :
       return "Jan"
    case 2 :
        return "Feb"
    case 3 :
        return "Mar"
    case 4 :
        return "Apr"
    case 5 :
        return "May"
    case 6 :
        return "Jun"
    case 7 :
        return "Jul"
    case 8 :
        return "Aug"
    case 9 :
        return "Sep"
    case 10 :
        return "Oct"
    case 11 :
        return "Nov"
    case 12 :
        return "Dec"
    default:
        return "원하시는 달이 없습니다."
    }
}

showMonth(month: 5)

func toMonth (num : Int)->String {
    if num == 1 {
        return "Jan"
    } else if num == 2 {
        return "Feb"
    } else if num == 3 {
        return "Mar"
    } else if num == 4 {
        return "Apr"
    } else if num == 5 {
        return "May"
    } else if num == 6 {
        return "Jun"
    } else if num == 7 {
        return "Jul"
    } else if num == 8 {
        return "Aug"
    } else if num == 9 {
        return "Sep"
    } else if num == 10 {
        return "Oct"
    } else if num == 11 {
        return "Nov"
    } else if num == 12 {
        return "Dec"
    } else {
        return("원하는 달력이 없습니다. ")
    }
}


//다른 사람 답

func intToMonth ( _ month : Int ) -> String {
    switch month {
    case 1...12 :
        return String(month) + "월"
    default :
        return "Error"
    }
}

intToMonth(3)

//3) 세 수를 입력받아 세 수의 곱이 양수이면 true, 그렇지 않으면 false 를 반환하는 함수
//  (switch where clause 를 이용해 풀어볼 수 있으면 해보기)
func multiply (num :(Int,Int,Int)) -> Bool {
    switch num {
    case let (x,y,z) where x*y*z > 0 :
        return true
    default :
        return false
        
    }
}

multiply(num: (10,20,30))

// 다른 사람이 한 답
func threeMultiple ( _ numbers: (Int, Int, Int)) -> Any {
    switch numbers {
    case let (x,y,z) where x*y*z > 0 :
        return true
    case let (x,y,z) where x*y*z < 0 :
        return false
    default :
        return "Error"
    }
}

threeMultiple((10,20,-30))
/*
 반복문(for , while , repeat - while)을 이용해 아래 문제들을 구현해보세요.
//4) 자연수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
   (Factorial 참고: 어떤 수가 주어졌을 때 그 수를 포함해 그 수보다 작은 모든 수를 곱한 것)
   ex) 5! = 5 x 4 x 3 x 2 x 1
 
 */

func getFactorial (num : Int) {
   
    for index in (1...num).reversed() {
        print("\(num)! = \(num * index) ")
    }
}
getFactorial(num: 4)

// 다른 사람이 한 답
func factorial (_ input : Int ) -> Int {
    if input == 1 {
        return 1
    } else {
        return input * factorial (input - 1)
    }
}
factorial (5)
//5) 자연수 두 개를 입력받아 첫 번째 수를 두 번째 수만큼 제곱하여 반환하는 함수
// (2, 5 를 입력한 경우 결과는 2의 5제곱)
let num1 = 2
let answer1 = 5
var result = 1

func multiplyDouble ( num1 : Int , answer1: Int ) -> Int {
    for _ in 1...answer1 {
        result = num1 * answer1
    }
   return result
}

multiplyDouble(num1: 2, answer1: 3)
// 다른 사람이 한 답
func mc( one : Int , two : Int ) -> Int {
    var result = one
    for _ in 2...two {
        result *= one
    }
    return result
}

mc(one: 2, two: 5)
//6) - 자연수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
//  (1234 인 경우 각 자리 숫자를 합치면 10)

// 다른 사람이 한 답
func countSum ( _ input : Int) -> Int {
    var result = 0
    
    for char in String(input) {
        result += Int(String(char))!
    }
    return result
}

countSum(1234)


 
 // 자연수 하나를 입력받아 1부터 해당 숫자 사이의 모든 숫자의 합을 구해 반환하는 함수를 만들되,
 //  그 합이 2000 을 넘는 순간 더하기를 멈추고 바로 반환하는 함수

    func add (num : Int ) -> Int {
    var total = 0
    
    for i in 1...num {
        if total > 2000 {
            break
        } else {
            total += i
        }
    }
      return total
    }

// 다른 사람이 한 답
func addOver ( _ input : Int ) -> Int  {
    var result : Int = 0
    
    for number in 1...input {
        if result > 2000 {
            break
        } else {
            result += number
        }
    }
       return result
}


addOver(50)
 //1 ~ 50 사이의 숫자 중에서 20 ~ 30 사이의 숫자만 제외하고 그 //나머지를 모두 더해 출력하는 함수

// 다른 사람이 한 답
func rangeSum(_ input : Int) -> Int {
    var result = 0
    for number in 1...input {
        if (20...30).contains(number){
            continue
        } else {
            result += number
        }
    }
    return result
}

rangeSum(50)
