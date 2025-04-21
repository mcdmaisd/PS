let testCases = Int(readLine()!)!

for _ in 0 ..< testCases {

    let n = Int(readLine()!)!

    if n == 0 {
        print(0)
        continue
    }

    var types: [String] = []
    var counts: [Int] = []

    for _ in 0 ..< n {
        let line = readLine()!.split(separator: " ")
        let currentType = String(line[1])

        var foundIndex = -1
        for j in 0 ..< types.count {
            if types[j] == currentType {
                foundIndex = j
                break
            }
        }

        if foundIndex != -1 {
            counts[foundIndex] += 1
        } else {
            types.append(currentType)
            counts.append(1)
        }
    }

    var totalCombinations = 1
    
    for count in counts {
        totalCombinations *= (count + 1)
    }

    let finalAnswer = totalCombinations - 1
    
    print(finalAnswer)
}
