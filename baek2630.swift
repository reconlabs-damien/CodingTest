import Foundation

let n = Int(readLine()!)!

var array:[[Int]] = []

for _ in 0..<n {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    array.append(tmp)
}

var blue = 0
var white = 0

func check(_ r: Int, _ c: Int, _ sz: Int) -> Void {

    let value = array[r][c]

    for i in r..<r+sz {
        for j in c..<c+sz {
            if array[i][j] != value {
                check(r, c, sz/2)
                check(r+(sz/2), c, sz/2)
                check(r, c+(sz/2), sz/2)
                check(r+(sz/2), c+(sz/2), sz/2)

                return
            }
        }
    }

    if value == 1 {
        blue += 1
    } else {
        white += 1
    }

}



check(0, 0, n)
print(white)
print(blue)