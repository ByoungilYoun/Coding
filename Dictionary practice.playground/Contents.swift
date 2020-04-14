import UIKit


// 딕셔너리 연습
var dic = [1:"책상" , 2:"의자", 3:"컴퓨터", 4: "마우스"]

var dic2 :[Int: String] = [1:"책상" , 2:"의자", 3:"컴퓨터", 4: "마우스"]

var dic4 :Dictionary<Int,String> = [1:"책상" , 2:"의자", 3:"컴퓨터", 4: "마우스"]

var count = dic.count
print(count)

// 개수는 count
var girls : [Int: String] = [1:"소녀시대", 2:"걸스데이", 3:"티아라"]
print("원소의 개수 : \(girls.count)")

if (girls[1] != nil) {
    print(girls[1]!)
}

// 새로운 값을 바꾸거나 추가하고 싶을때. 딕셔너리는 모든 원소가 고유한 키로 구분되기 때문에 배열의 append를 쓰지 못한다.
girls[1] = "여자친구"
girls[7] = "애프터스쿨"

for (key,value ) in girls {
    print("걸그룹 키와 값 : \(key),\(value)")
}

// 순서대로 정렬
for (key, value) in girls.sorted(by: {$0.0 < $1.0 }) {
    print("걸그룹 키와 값 : \(key), \(value)/")
}

// 딕셔너리 안에는 Int 나 String과 같은 기본 자료형 뿐만 아니라 객체가 들어갈 수도 있다.
var names : [Int : String] = [1:"소녀시대", 2: "걸스데이", 3: "티아라"]
var ages : [Int:Int] = [1:20, 2:23, 3:24]
var mobiles : [Int: String] = [1:"01001010", 2:"123455", 3: "45657788"]

class Person {
    var names : String?
    var ages : Int?
    var mobiles : String?

    init(name:String?, age:Int?, mobile : String?) {
        self.names = name
        self.ages = age
        self.mobiles = mobile
    }
}

var persons : [String:Person] = [:]
var person1 = Person(name: names[1], age: ages[1], mobile: mobiles[1])
persons[names[1]!] = person1
var person2 = Person(name: names[2], age: ages[2], mobile: mobiles[2])
persons[names[2]!] = person2
var person3 = Person(name: names[3], age: ages[3], mobile: mobiles[3])
persons[names [3]!] = person3

print(persons.count)


// 딕셔너리에 전화번호부 데이터 넣기
var phonebook : [String : [String]] = [:]

var family : [String] = ["아빠", "엄마" , "나"]
phonebook["가족"] = family

var friends : [String] = ["찬기", "정운", "동하"]
phonebook["친구"] = friends

print("전화번호부의 그룹 개수 : \(phonebook.count)")

for (groups , names) in phonebook {
    print("전화번호부 그룹 이름 : \(groups)")
    print("\(groups) 그룹의 이름들 = \(names)")
}
// enumerated 메소드 - 딕셔너리 안에 있는 원소들을 모두 확인할때

for (index , elem ) in phonebook.enumerated() {
    print("전화번호부의 인덱스 : \(index)")
    print("각 그룹 : \(elem)")
}

// 딕셔너리 객체 안에 들어 있는 원소들의 키들만 배열로 뽑아내거나 값들만 배열로 뽑아내고 싶을 때는 keys 와 values 속성을 사용합니다.

let keys = [String](phonebook.keys)
let values = [[String]](phonebook.values)

print("전화번호부 키 배열 : \(keys)")
print("전화번호부 값 배열 : \(values)")

print([String](phonebook.keys))
print([[String]](phonebook.values))

for group in phonebook.keys.sorted().reversed() {
    print("전화번호부 그룹 이름 : \(group)")
}
