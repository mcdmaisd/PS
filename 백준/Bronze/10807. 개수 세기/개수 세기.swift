import Foundation

func countV() {
    let _ = Int(readLine()!)!
    let numArr = readLine()!.split(separator: " ").map { Int($0)! }
    let v = Int(readLine()!)!

    print(numArr.filter { $0 == v }.count)
}

countV()