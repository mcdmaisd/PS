import Foundation

func isValid1() {
    let num = Int(readLine()!)!
    
    for _ in 0 ..< num {
        let str = readLine()!
        
        var count = 0
        
        for char in str {
            if char == "(" {
                count += 1
            } else {
                count -= 1
            }
            
            if count < 0 {
                break
            }
        }
        
        count == 0 ? print("YES") : print("NO")
    }
}


isValid1()