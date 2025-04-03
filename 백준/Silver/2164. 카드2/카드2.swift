import Foundation

func solution() {
    let input = Int(readLine()!)!
    
    var result = 0
    var pointer = 0
    var arr = Array(1...input)
    
    /*
     1 2 3 4
     2 3 4
     3 4 2
     -------- 1회
     3 4 2
     4 2
     2 4
     -------- 2회
     2 4
     4
     -------- 3회: 결과값 = 4 출력
     수행이 끝나면 pointer 1 증가 시켜서 pointer가 count - 1과 같으면 그거 출력하게?
     삭제 안할거면 append하고 나서도 pointer 증가
     */
    
    for i in 0 ..< arr.count {
        if i >= arr.count - 1 {
            result = arr.last!
            break
        } else {
            pointer += 1//한장 버리고
            if pointer == arr.count - 1 {
                result = arr[pointer]
                break
            }
            arr.append(arr[pointer])
            pointer += 1
        }
    }
    
    
    print(result)
}

solution()
