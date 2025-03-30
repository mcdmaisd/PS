import Foundation

func josephus() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let first = input.first!
    let last = input.last!
    
    var people = Array(1...first)
    var result = [Int]()
    var index = 0
    
    while !people.isEmpty {
        index = (index + last - 1) % people.count
        result.append(people.remove(at: index))
    }
    
    print("<" + result.map { String($0) }.joined(separator: ", ") + ">")
}

josephus()