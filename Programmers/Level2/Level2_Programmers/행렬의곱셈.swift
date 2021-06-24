// 프로그래머스 레벨2. 행렬의 곱셈
//
// 두 바퀴째 - 대충 로직은 생각했으나.. 사소한 부분에서 자꾸 막혀서 결국 첫 번째 풀이 참고하여 풀었음,,
// 그리고 내 생각엔 첫 번째 행렬의 크기로 결과 행렬을 만들면 된다고,, 생각해서
// repeating 사용하여 arr1과 같은 크기의 행렬을 만들어서 해줬으나, 그렇게 하니까 바로 코어 덤프어쩌구 나옴..ㅜ 뭔가 다른 테스트케이스가 있는 듯 한데, 행렬을 잘 몰라서 그런지 잘 모르겠다,,
// 다음에 정신차리고 다시 한 번 풀어봐야겠다.

import Foundation

func solution1(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]]()
    
    for i in 0..<arr1.count {
        var tempArr = [Int]() // 한 행을 만들어 넣을 배열 생성
        for j in 0 ..< arr2[0].count { // arr2[0]의 길이만큼 곱셈이 시행될 것,!,!,!
            var sum = 0 // 값을 더해줄 변수 생성
            for k in 0 ..< arr1[0].count {
                sum += arr1[i][k] * arr2[k][j] // 메인 계산식
            }
            tempArr.append(sum)
        }
        result.append(tempArr)
    }
    
    return result
}

// 입출력 예시
print(solution1([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]))
print(solution1([[2, 3, 2], [4, 2, 4], [3, 1, 4]], [[5, 4, 3], [2, 4, 1], [3, 1, 1]]))
