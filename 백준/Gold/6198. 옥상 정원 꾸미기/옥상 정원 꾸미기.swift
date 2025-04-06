import Foundation

func findVisibleBuildings() -> Int {
    // 빌딩 수 입력 받기
    guard let n = Int(readLine() ?? "") else { return 0 }
    
    var stack = [Int]()
    var answer: Int64 = 0 // long long 타입 사용
    
    // 각 빌딩 높이 입력 받기
    for _ in 0..<n {
        if let height = Int(readLine() ?? "") {
            // 현재 빌딩보다 낮은 빌딩들은 스택에서 제거
            while !stack.isEmpty && stack.last! <= height {
                stack.removeLast()
            }
            
            // 스택에 남아있는 빌딩 수가 현재 빌딩을 볼 수 있는 빌딩 수
            answer += Int64(stack.count)
            
            // 현재 빌딩을 스택에 추가
            stack.append(height)
        }
    }
    
    return Int(answer)
}

print(findVisibleBuildings())
