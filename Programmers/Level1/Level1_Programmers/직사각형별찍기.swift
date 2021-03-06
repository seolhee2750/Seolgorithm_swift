// 프로그래머스 레벨1. 직사각형 별 찍기
//
// 두 바퀴째 - 첫 번째랑 걍 똑같이 풀었음. / String(repeating: count:) 외우깅
//
// 세 바퀴째 - 거의 동일.,

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

// repeating을 사용하여 한 줄마다 a개씩 *을 찍어주고, 이를 b번 반복하는 for문
for i in 0..<b {
    print(String(repeating: "*", count: a))
}

