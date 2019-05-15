extension Character {
    func int() -> Int {
        return Int(String(self))!
    }
}

class Solution {
    func calculateNewBit(leftBit: Int, rightBit: Int = 0, carry: inout Int) -> String {
        let sum = leftBit + rightBit + carry
        carry = sum / 2
        var newBit = sum % 2
        return String(newBit)
    }
    
    func addBinary(_ a: String, _ b: String) -> String {
        
        let aCharList: [Character] = Array(a).reversed()
        let bCharList: [Character] = Array(b).reversed()
        
        guard let minLength = [aCharList.count, bCharList.count].min() else {
            return ""
        }
        
        var carry = 0
        var result = ""
        
        for i in 0..<minLength {
            result += calculateNewBit(leftBit: aCharList[i].int(), rightBit: bCharList[i].int(), carry: &carry)
        }
        
        if aCharList.count > minLength {
            for i in minLength..<aCharList.count {
                result += calculateNewBit(leftBit: aCharList[i].int(), carry: &carry)
            }
        }
        
        if bCharList.count > minLength {
            for i in minLength..<bCharList.count {
                result += calculateNewBit(leftBit: bCharList[i].int(), carry: &carry)
            }
        }

        if carry == 1 {
            result += "1"
        }
        
        return String(Array(result).reversed())
    }
}

let sol = Solution()
sol.addBinary("11", "11")
