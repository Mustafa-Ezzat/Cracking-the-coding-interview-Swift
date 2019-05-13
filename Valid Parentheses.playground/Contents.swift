import Foundation
struct Stack<Element> {
    var data = Array<Element>()
    mutating func push(_ element: Element) {
        data.append(element)
    }
    mutating func pop() -> Element? {
        return data.popLast()
    }
    var top: Element? {
        return data.last
    }
    func isEmpty() -> Bool {
        return top == nil
    }
}

class Solution {
    var stack = Stack<Character>()
    func isValid(_ s: String) -> Bool {
        for char in s {
            print(stack)
            if (char == "{" || char == "(" || char == "[") {
                stack.push(char)
                continue
            }
            
            if (stack.isEmpty()) {
                return false;
            }
            
            switch char {
            case "}":
                let top = stack.pop()
                if top == "(" || top == "[" {
                    return false
                }
            case "]":
                let top = stack.pop()
                if top == "(" || top == "{" {
                    return false
                }
            case ")":
                let top = stack.pop()
                if top == "{" || top == "[" {
                    return false
                }
            default:
                break
            }
        }
        return stack .isEmpty()
    }
}

var solution = Solution()
solution.isValid("{{([{[]}])}}")
