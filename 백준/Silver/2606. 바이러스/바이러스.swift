import Foundation

func p2606() {
    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    
    var adjList: [[Int]] = .init(repeating: [], count: n + 1)
    var result = 0
    
    for _ in 0 ..< m {
        let edge = readLine()!.split(separator: " ").map { Int($0)!}
        adjList[edge[0]].append(edge[1])
        adjList[edge[1]].append(edge[0])
    }
    
    var queue: [Int] = []
    var front = 0
    var vis: [Bool] = .init(repeating: false, count: n + 1)
    
    vis[1] = true
    queue.append(1)
    
    while queue.count >= front + 1 {
        let cur = queue[front]
        front += 1
        
        for degree in adjList[cur] {
            if vis[degree] { continue }
            vis[degree] = true
            queue.append(degree)
            result += 1
        }
    }
    
    print(result)
}

p2606()