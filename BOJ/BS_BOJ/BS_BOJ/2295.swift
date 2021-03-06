// BOJ #2295 ์ธ ์์ ํฉ
/*
 x + y + z = k
 x + y = k - z
 (๐ฅ x, y, z, k ๋ ๋ชจ๋ ๊ฐ์ ์ ์์)
 */

let n = Int(readLine()!)!
var u = [Int]()
var sum = Set<Int>() // x + y ๊ฐ ๋  ์ ์๋ ๋ชจ๋  ๊ฒฝ์ฐ์ ์
var result = Set<Int>() // k - z ๊ฐ ๋  ์ ์๋ ๋ชจ๋  ๊ฒฝ์ฐ์ ์

for _ in 0..<n { u.append(Int(readLine()!)!) }

for i in 0..<n {
    for j in 0..<n {
        sum.insert(u[i] + u[j])
    }
}

for i in 0..<n {
    for j in (0..<n).reversed() {
        if sum.contains(u[i] - u[j]) { result.insert(u[i]) } // k - z ๊ฐ์ด sum์ ์กด์ฌํ  ๊ฒฝ์ฐ result์ k ๊ฐ ๋ฃ์ด์ฃผ๊ธฐ
    }
}

print(result.max()!)
