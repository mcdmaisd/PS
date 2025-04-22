import Foundation
//k보다 큰 수는 제외한 나머지 배열중에서 가장 큰 수 순서대로 나눈 몫을 합산.
//해당수로 나눈 나머지를 그 다음 큰수로 나누기
// 나누려는 수보다 크면 다음 작은 숫자로
// 나머지가 0이 되면 종료
func p11047() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    var arr: [Int] = []
    var money = input[1]
    var result = 0
    
    for _ in 0 ..< input[0] {
        let num = Int(readLine()!)!
     
        if num <= money {
            arr.append(num)
        }
    }
    
    for i in arr.reversed() {
        if i <= money {
            result += money / i
            money = money % i
        }
        
        if money == 0 {
            break
        }
    }
    
    print(result)
}

p11047()