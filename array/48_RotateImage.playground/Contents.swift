import UIKit

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        
        guard matrix.count > 1 && matrix.count == matrix[0].count else { return }
        
        for row in 0 ..< matrix.count/2 {
            
            let last = matrix.count - 1 - row
            
            for column in row ..< last {
                
                let offset = column - row
                
                let top = matrix[row][column]
                
                // left -> top
                matrix[row][column] = matrix[last-offset][row]
                
                // bottom -> left
                matrix[last-offset][row] = matrix[last][last-offset]
                
                // right -> bottom
                matrix[last][last-offset] = matrix[column][last]
                
                // top -> right
                matrix[column][last] = top
            }
        }
    }
}
