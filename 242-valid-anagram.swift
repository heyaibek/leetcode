//
// Time complexity: O(n)
// Space complexity: O(n)
//

class Solution {
  func isAnagram(_ s: String, _ t: String) -> Bool {
    // toAsciiArr(s) == toAsciiArr(t)

    var map = [Character: Int]()
    
    for c in s { map[c, default: 0] += 1 }
    for c in t { map[c, default: 0] -= 1 }

    return map.values.allSatisfy { $0 == 0 }
  }

  private func toAsciiArr(_ s: String) -> [Int] {
    var arr = [Int](repeating: 0, count: 26)
    let ascii = Character("a").asciiValue ?? 0

    for c in s.utf8 {
      arr[Int(c - ascii)] += 1
    }

    return arr
  }
}
