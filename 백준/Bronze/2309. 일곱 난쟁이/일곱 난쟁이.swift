import Foundation

func findDwarf() {
    var arr: [Int] = []
    
    for _ in 0 ..< 9 {
        let input = Int(readLine()!)!
        arr.append(input)
    }
    
    let sum = arr.reduce(0, +)
    
    for i in 0 ..< 8 {
        for j in (i + 1) ..< 9 {
            if sum - arr[i] - arr[j] == 100 {
                var result = [Int]()
                
                for k in 0..<9 {
                    if k != i && k != j {
                        result.append(arr[k])
                    }
                }
                
                result.sort()
                
                for height in result {
                    print(height)
                }
                
                return
            }
        }
    }
}

findDwarf()