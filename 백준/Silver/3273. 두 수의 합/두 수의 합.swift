import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
let x = Int(readLine()!)!
let sorted = arr.sorted()

func findPair() -> Int {
    var count = 0
    var left = 0
    var right = n - 1
    
    while left < right {
        let sum = sorted[left] + sorted[right]
        
        if sum == x {
            count += 1
            left += 1
            right -= 1
        } else if sum < x {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return count
}

print(findPair())