import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        
        if s.isEmpty { return true }
        
        let dict = [")":"(", "}":"{", "]":"["]
        
        if s.count == 1 && dict.keys.contains(String(s.first!)) {
            return false
        }
        
        var stack = [String]()
        
        for char in s {
            
            if dict.keys.contains(String(char)) {
                
                let topElement = stack.isEmpty ? "#" : stack.popLast()
                
                if dict[String(char)] != topElement {
                    return false
                }
                
            } else {
                
                stack.append(String(char))
            }
        }
        
        return stack.isEmpty
    }
}
