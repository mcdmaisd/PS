import Foundation

func p1475_final() {
    let roomNumberString = readLine()!

    var counts = [Int](repeating: 0, count: 10)

    for char in roomNumberString {
        if let digit = Int(String(char)) {
            counts[digit] += 1
        }
    }

    let count69 = counts[6] + counts[9]
    let setsFor69 = (count69 + 1) / 2

    var maxOtherCount = 0
    for i in 0...8 {
        if i == 6 { continue }
        maxOtherCount = max(maxOtherCount, counts[i])
    }

    let finalResult = max(setsFor69, maxOtherCount)

    print(finalResult)
}

p1475_final()