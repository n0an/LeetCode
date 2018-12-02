import UIKit

var str = "Hello, playground"

class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        
        var resultMatrix = Array(repeating: Array(repeating: 0, count: A.count), count: A[0].count)
        
        for rowIndex in 0 ..< A.count {
            for columnIndex in 0 ..< A[rowIndex].count {
                resultMatrix[columnIndex][rowIndex] = A[rowIndex][columnIndex]
            }
        }
        
        return resultMatrix
    }
}

let matrix1 = [[1, 2, 3],
              [4, 5, 6]]

let s = Solution()

let res = s.transpose(matrix1)

print(res)

let matrix2 = [[1, 2, 3],
               [4, 5, 6],
               [7, 8, 9]]

let res2 = s.transpose(matrix2)


