import UIKit

// Set 연습

var food : Set<String> = ["cheese", "milk", "bread"]
food.count
food.isEmpty

var names : Set<String> = ["소녀시대", "티아라", "걸스데이"]
print("셋 안의 이름 개수 : \(names.count)")

// 셋 안에 어떤 원소가 들어 있는지 확인하고 싶거나 들어 있는 원소를 삭제하고 싶을때
if names.contains("걸스데이") {
    print("걸스데이 원소가 있음")
    names.remove("걸스데이")
    print("삭제 후 이름 개수 : \(names.count)")
}

names.insert("애프터스쿨")
var index = 0
for name in names {
    print("원소 #\(index) ->\(name)")
    index += 1
}

// 셋에 들어 있는 모든 데이터는 모두 다른 값을 가지고 있어야 한다. 따라서 같은 값을 insert 메소드로 자루 속에 넣게 되면 두 개의 값이 존재하는 것이 아니라 새로운 값이 기존 값을 덮어쓰게 된다. 또한 셋은 집합 연산을 할 수 있도록 도와준다.

var names1 : Set<String> = ["소녀시대", "걸스데이" , "티아라"]
var names2 : Set<String> = ["걸스데이", "애프터스쿨"]

names2.insert("애프터스쿨")
print("names2 셋의 원소 개수 : \(names2.count)")

//교집합
var output = names1.intersection(names2)
print("intersection 결과 : \(output)")

//합집합
output = names1.union(names2)
print("union 결과 : \(output)")

//여집합
output = names1.symmetricDifference(names2)
print("symmetricDifference 결과 : \(output)")

//차집합
output = names1.subtracting(names2)
print("subtracting 결과 : \(output)")


