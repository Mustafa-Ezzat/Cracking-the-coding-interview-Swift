import Foundation
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        if(nums1.count == 0 || nums2.count == 0) {
            return result
        }
        let countedSet = NSCountedSet(array: nums2)
        for num in nums1 {
            if countedSet.count(for: num) > 0 {
                result.append(num)
                countedSet.remove(num)
            }
        }
        return result
    }
}
