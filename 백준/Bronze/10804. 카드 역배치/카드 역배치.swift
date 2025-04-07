import Foundation

func flip() {
    var arr = Array(1...20)
    
    for i in 0 ..< 10 {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        let first = numbers.first! - 1
        let last = numbers.last! - 1
        let sum = first + last
        let count = last - first + 1
        
        for i in 0 ..< count / 2 {
            arr.swapAt(first + i, last - i)
        }
    }
    
    print(arr.map { String($0) }.joined(separator: " "))
}

flip()