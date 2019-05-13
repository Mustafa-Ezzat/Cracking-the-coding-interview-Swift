/*Valid Palindrome
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 Note: For the purpose of this problem, we define empty string as valid palindrome.
 
 Example 1:
 
 Input: "A man, a plan, a canal: Panama"
 Output: true
 Example 2:
 
 Input: "race a car"
 Output: false
*/

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
        var withOutSpace = s.replacingOccurrences(of: " ", with: "")
        withOutSpace = withOutSpace.lowercased()
        let unsafeChars = CharacterSet.alphanumerics.inverted
        let alphabets = withOutSpace.components(separatedBy: unsafeChars).joined(separator: "")
        let reversed = String(alphabets.reversed())
        return reversed == alphabets
    }
}

var solution = Solution()
solution.isPalindrome("race a car")
