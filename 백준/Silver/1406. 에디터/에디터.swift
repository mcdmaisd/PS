import Foundation

var leftStack = Array(readLine()!)
var rightStack = [Character]()

for _ in 0..<Int(readLine()!)! {
    let command = readLine()!
    switch command.first {
    case "L":
        if !leftStack.isEmpty {
            rightStack.append(leftStack.removeLast())
        }
    case "D":
        if !rightStack.isEmpty {
            leftStack.append(rightStack.removeLast())
        }
    case "B":
        if !leftStack.isEmpty {
            leftStack.removeLast()
        }
    case "P":
        leftStack.append(command.last!)
    default:
        break
    }
}

print(String(leftStack + rightStack.reversed()))
