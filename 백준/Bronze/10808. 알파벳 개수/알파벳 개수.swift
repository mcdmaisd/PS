import Foundation

let input = readLine()!

func count() {
    let aScalarValue = 97
    var result = Array(repeating: 0, count: 26)
    
    for ascii in input.unicodeScalars {
        let index = Int(ascii.value) - aScalarValue
        result[index] += 1
    }
    
    let stringResult = result.map { String($0) }.joined(separator: " ")
    
    print(stringResult)
}


count()