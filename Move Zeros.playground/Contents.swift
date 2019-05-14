import Foundation

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var cursor = 0
        var result = Array<Int>(repeating: 0, count: nums.count)
        for num in nums {
            if num != 0 {
                result[cursor] = num
                cursor += 1
            }
        }
        nums = result
    }
}

var solution = Solution()
var nums = [1,2,3,4,0,5,0,7]
solution.moveZeroes(&nums)
print(nums)

