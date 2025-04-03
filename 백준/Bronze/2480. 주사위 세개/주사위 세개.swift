import Foundation

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let count = Set(input).count
    
    var result = 0
    
    if count == 3 {
        result = input.max()! * 100
    } else if count == 2 {
        if input[0] == input[1] {
            result = 1000 + (input[0] * 100)
        } else if input[1] == input[2] {
            result = 1000 + (input[1] * 100)
        } else {
            result = 1000 + (input[0] * 100)
        }
    } else {
        result = input.first! * 1000 + 10000
    }
    
    print(result)
}

solution()