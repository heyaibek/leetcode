// Time complexity: O(N * M * log_M)
// Space complexity: O(N * M)
//
// where N is the number of strings
//       M is the max length of a string
class Solution {
  func groupAnagrams(_ strs: [String]) -> [[String]] {
    var map: [String: [String]] = [:]
    for s in strs {
      let key = String(s.sorted())
      map[key, default: []].append(s)
    }
    return Array(map.values)
  }
}
