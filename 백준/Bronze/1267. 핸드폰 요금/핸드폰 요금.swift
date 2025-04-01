import Foundation

func getFee() {
    let _ = Int(readLine()!)!
    let numArr = readLine()!.split(separator: " ").map { Int($0)! }

    let yInterval = 30
    let mInterval = 60
    
    let yPrice = 10
    let mPrice = 15
    
    var fee = 0
    var yFee = 0
    var mFee = 0
    var minName = ""
    
    for time in numArr {
        yFee += ((time / yInterval) + 1) * yPrice
        mFee += ((time / mInterval) + 1) * mPrice
    }
    
    if yFee < mFee {
        minName = "Y"
    } else if mFee < yFee {
        minName = "M"
    } else {
        minName = "Y M"
    }
    
    fee = min(yFee, mFee)

    print(minName, fee)
}

getFee()