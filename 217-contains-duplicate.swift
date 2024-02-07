//
// Time complexity: O(N)
// Space complexity: O(N)
//
//   where N is the number of elements in the nums array
//

class Solution {
  func containsDuplicate(_ nums: [Int]) -> Bool {
    nums.count != Set(nums).count
  }
}
