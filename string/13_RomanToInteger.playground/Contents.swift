import Cocoa


class Solution {
    
    let dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    
    func romantToInt(_ s: String) -> Int {
        
        var index = 0
        
        var sum = 0
        
        while index < s.count {
            
            let currentChar = s[index]
            
            guard var val = dict[currentChar] else { return 0 }
            
            if index == s.count - 1 {
                sum += val
                return sum
            }
            
            switch currentChar {
            case "I":
                let nextChar = s[index + 1]
                if nextChar == "V" {
                    val = 4
                    sum += val
                    index += 2
                    
                } else if nextChar == "X" {
                    val = 9
                    sum += val
                    index += 2
                    
                } else {
                    sum += val
                    index += 1
                }
                
            case "X":
                let nextChar = s[index + 1]
                if nextChar == "L" {
                    val = 40
                    sum += val
                    index += 2
                    
                } else if nextChar == "C" {
                    val = 90
                    sum += val
                    index += 2
                    
                } else {
                    sum += val
                    index += 1
                }
                
            case "C":
                let nextChar = s[index + 1]
                if nextChar == "D" {
                    val = 400
                    sum += val
                    index += 2
                    
                } else if nextChar == "M" {
                    val = 900
                    sum += val
                    index += 2
                    
                } else {
                    sum += val
                    index += 1
                }
                
            default:
                sum += val
                index += 1
            }
            
        }
        return sum
    }
}

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

let inputStr = "MCMXCIV"

let s = Solution()

let x = s.romantToInt(inputStr)

print(x)

