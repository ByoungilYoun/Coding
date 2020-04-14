import UIKit
//Array
// 1. ["p", "u", "p", "p", "y"] 라는 값을 가진 배열에서 마지막 "p" 문자 하나만 삭제하기

var array1 : Array<String> = ["p","u","p","p","y"]

if let lastIndexofP = array1.lastIndex(of: "p") {
    array1.remove(at: lastIndexofP)
}

array1


// 2. 정수 타입의 배열을 2개 선언하고 두 배열의 값 중 겹치는 숫자들로만 이루어진 배열 만들기
// ex) [1, 2, 4, 8, 9, 12, 13] , [2, 5, 6, 9, 13]  -->  [2, 9, 13]


let array2 :Array<Int> = [1,2,4,8,9,12,13]
let array3 :Array<Int> = [2,5,6,9,13]
var array4 :[Int] = []
for i in array2 {
    for j in array3 {
        if i == j {
            array4.append(j)
        }
    }
}

array4


// 3. 정수 타입의 배열을 선언하고 해당 배열 요소 중 가장 큰 값을 반환하는 함수
// ex) [50, 23, 29, 1, 45, 39, 59, 19, 15] -> 59

var array5 = [50,23,29,1,45,39,59,19,15]
//array5.max()


func printMaxNum (_ list : [Int]) -> Int {
    var maxValue = Int.min
    for i in list {
        maxValue = max (maxValue , i)
    }
    return maxValue
}

printMaxNum([2,1,3,4,5,6,])


// Dictionary

// 1번 문제 Dictionary로 저장되어 있는 시험 성적의 평균 점수 구하기.  예)
//let scores1 = ["kor": 92,"eng": 88, "math": 96, "science": 89]

let scores1 = ["kor": 92,"eng": 88, "math": 96, "science": 89]

var sum = 0
for value in scores1.values {
     sum += value
}

var average = Double(sum) / Double(scores1.count)


// 2번 문제  Dictionary로 저장된 scores 데이터를 튜플 타입을 지닌 배열로 변환하여 저장하기
  let scores = ["kor": 92,"eng": 88, "math": 96, "science": 89]
// 결과 : [("kor", 92), ("eng", 88), ("math", 96), ("science", 89)]

var scoreArr : [(String,Int)] = []

for (key,value) in scores {
    scoreArr.append((key,value))
}

scoreArr = Array(scores)
scoreArr


// 3번 문제 주어진 자료를 보고 Dictionary 자료형에 맞게 데이터를 변수에 저장하기
/*
 패스트캠퍼스 - key
  - 스쿨
   * iOS 스쿨
   * 백엔드 스쿨
   * 프론트엔드 스쿨
  - 캠프
   * A 강의
   * B 강의
  - 온라인
   * C 강의
   * D 강의
  */

var fastcampus = ["패스트캠퍼스":["스쿨":["ios스쿨","백엔드 스쿨", "프론트엔드 스쿨"],"캠프":["A 강의","B 강의"], "온라인":["C 강의", "D 강의"]]]

// 4번 문제
// 자세한 내용은 Optional 시간에 배울 예정
//위 문제에서 정의한 변수의 데이터 중 스쿨 배열에 저장된 첫번째 데이터를 꺼내어 출력하기
 
if let 패캠 = fastcampus["패스트캠퍼스"] {
    if let 스쿨 = 패캠["스쿨"] {
        print(스쿨[0])
    }
}

// 5번 문제
// [보기] 철수 - apple, 영희 - banana, 진수 - grape, 미희 - strawberry
// 위 보기처럼 학생과 좋아하는 과일을 매칭시킨 정보를 Dictionary 형태로 만들고
// 스펠링에 'e'가 들어간 과일을 모두 찾아 그것과 매칭되는 학생 이름을 배열로 반환하는 함수
var makingDictionary : Dictionary<String,String> = ["철수":"apple", "영희": "banana", "진수": "grape", "미희":"strawberry" ]

func getName (){
for (key,values) in makingDictionary {
    if values.contains("e")  {
        print(key)
    }
}
}

getName()


// 6번 문제
// 임의의 정수 배열을 입력받았을 때 홀수는 배열의 앞부분, 짝수는 배열의 뒷부분에 위치하도록 구성된 새로운 배열을 반환하는 함수
// ex) [2, 8, 7, 1, 4, 3] -> [7, 1, 3, 2, 8, 4]
var mixedArray : Array<Int> = [2,8,7,1,4,3]

func makeNewArray (_ input : [Int]) ->[Int] {
    
    var evenArray : Array<Int> = []
    var oddArray : Array<Int> = []
    
    for i in input {
        if (i%2) == 0 {
          evenArray.append(i)
        } else {
            oddArray.append(i)
        }
        
    }
    return oddArray + evenArray
}

makeNewArray([2,8,7,1,4,3])

// 7번 문제

// 0 ~ 9 사이의 숫자가 들어있는 배열에서 각 숫자가 몇 개씩 있는지 출력하는 함수
// 입력 : [1, 3, 3, 3, 8]
// 결과 :
// 숫자 1 : 1개
// 숫자 3 : 3개
// 숫자 8 : 1개
//

//let input = [1,3,3,3,8]
//func countNum (_ array : [Int]){
//    var countDict : [Int:Int] = [:]
//
//    for index in input {
//        if countDict[index] == nil {
//            countDict[index] = 1
//        } else {
//            countDict[index]! = countDict[index]! + 1
//        }
//    }
//
//    for (key,value) in countDict {
//        print("숫자 \(key) : \(value) 개 ")
//    }
//
//}
//
//countNum(input)


let input = [1,2,3,3,2,4,5,5]

func countNums(_ input : [Int]) {
    var countDict : [Int:Int] = [:]
    
    for index in input {
        if countDict[index] == nil {
            countDict[index] = 1
        } else {
            countDict[index]! = countDict[index]! + 1
        }
    }
    
    for (key,value) in countDict {
        print("숫자 \(key) : \(value) 개")
    }
}

countNums(input)

