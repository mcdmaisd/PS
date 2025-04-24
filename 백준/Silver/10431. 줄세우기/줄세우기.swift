import Foundation

func p10431() {
    let num = Int(readLine()!)!
    
    var arrs: [[Int]] = Array(repeating: [Int](), count: num)
    var result = ""

    for i in 0 ..< num {
        arrs[i] = readLine()!.split(separator: " ").map { Int($0)! }
    }
    
    for arr in arrs {
        var temp = Array(arr.dropFirst())
        var count = 0

        for i in 0 ..< temp.count - 1 {
            for j in (i + 1) ..< temp.count {
                if temp[i] > temp[j] {
                    temp.swapAt(i, j)
                    count += 1
                }
            }

            if temp == temp.sorted() || i == arr.count - 3 {
                break
            }
        }
        
        result += "\(arr.first!) \(count)\n"
    }
    
    print(result)
}

p10431()