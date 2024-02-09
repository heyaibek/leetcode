// Time complexity: O(n)
// Space complexity: O(n)

class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map: [Int: Int] = [:]
    for (i, n) in nums.enumerated() {
      if let j = map[target - n] {
        return [i, j]
      }
      map[n] = i
    }
    return []
  }
}
