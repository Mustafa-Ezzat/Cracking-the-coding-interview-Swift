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

struct Palindrome<Element> {
    var data = Array<Element>()
    mutating func add(_ element: Element) {
        data.append(element)
    }
    var end: Element? {
        return data.last
    }
    var start: Element? {
        return data.first
    }
    mutating func popLast() -> Element {
        return data.removeLast()
    }
    mutating func popFirst() -> Element {
        return data.removeFirst()
    }
    var atLeastTowChar: Bool {
        return data.count > 1
    }
}

class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var palindrome = Palindrome<Character>()
        for char in s {
            palindrome.add(char)
        }
        
        var atMostOnce = false
        
        while palindrome.atLeastTowChar {
            if palindrome.start == palindrome.end {
                print(palindrome.start, " balanced ", palindrome.end)
                palindrome.popLast()
                palindrome.popFirst()
            } else {
                if atMostOnce {
                    return false
                }
                print(palindrome.start, " not balanced ", palindrome.end)
                palindrome.popLast()
                palindrome.popFirst()
                atMostOnce = true
            }
        }
        return true
    }
}

let solution = Solution()
solution .validPalindrome("abcaa")
