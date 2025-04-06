import Foundation

func findMatchingCharacters() {
    let str1 = readLine()!
    let str2 = readLine()!
    
    let set1 = Set(str1)
    let set2 = Set(str2)
    
    let common = set1.intersection(set2)
    
    var commonCount = 0
    
    for char in common {
        let count1 = str1.filter { $0 == char }.count
        let count2 = str2.filter { $0 == char }.count
        commonCount += min(count1, count2)
    }
    
    print(str1.count + str2.count - (commonCount * 2))
}

findMatchingCharacters()