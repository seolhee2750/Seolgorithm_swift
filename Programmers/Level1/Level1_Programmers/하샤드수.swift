// 프로그래머스 레벨1. 하샤드 수
//
// 두 바퀴 째 - return 부분 훨씬 깔끔하게 됐당 / 여전히 map이랑 reduce는 완벽하지 못함,.,!ㅣ,.
// 한 줄로도 바꿀 수 있을 것 같은데 가독성 생각하면 차라리 이 정도가 좋은듯??.

import Foundation

// 첫 번째 풀이
func solution1(_ x:Int) -> Bool {
    let number = String(x).map{Int(String($0))!}.reduce(0, +) // 입력받은 수를 String으로 변환 후 map 이용하여 String 배열의 모든 String 원소들을 다시 Int로 변환, reduce 이용해서 모두 더해줌
    
    // 입력받은 수 x가 number로 나눠 떨어질 때 true 리턴
    if x % number == 0 {
        return true
    }
    
    // 입력받은 수 x가 number로 나눠 떨어지지 않을 때 false 리턴
    else {
        return false
    }
}

// 두 바퀴 째 풀이
func solution2(_ x:Int) -> Bool {
    let result = String(x).map{ Int(String($0))! }.reduce(0, +)
    return x % result == 0
}

// 입출력 예시
print(solution1(10))
print(solution1(12))
print(solution1(11))
print(solution1(13))

print(solution2(10))
print(solution2(12))
print(solution2(11))
print(solution2(13))
