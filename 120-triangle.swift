//
// Time complexity: O(N^2)
// Space complexity: O(N)
//
//   where N is the number of elements in the triangle array
//

class Solution {
  func minimumTotal(_ triangle: [[Int]]) -> Int {
    var arr = triangle
	
    for i in stride(from: arr.count - 1, through: 0, by: -1) {
      for j in stride(from: arr[i].count - 1, through: 0, by: -1) {
        let curr = arr[i][j]
        
        var prevLeft = 0
        var prevRight = 0

        if i < arr.count - 1 {
          prevLeft = arr[i + 1][j]
          prevRight = arr[i + 1][j + 1]
        }
        
        arr[i][j] = min(curr + prevLeft, curr + prevRight)
      }
    }
    
    return arr[0][0]
  }
}
