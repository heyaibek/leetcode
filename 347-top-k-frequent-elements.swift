// Time complexity O(n)
// Space complexity O(n)

class Solution {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var map: [Int: Int] = [:]

    // build a count map
    for n in nums {
      let count = map[n, default: 0]
      map[n] = count + 1
    }
    
    // build occurences bucket
    var bucket = [[Int]](repeating: [], count: nums.count + 1)
    for (k, v) in map {
      bucket[v].append(k)
    }

    var result = [Int]()
    var k = k
    
    for i in stride(from: bucket.count - 1, through: 0, by: -1) {
      for val in bucket[i] {
        result.append(val)
        k -= 1

        if k == 0 {
          return result
        }
      }
    }
    
    return result
  }
}
