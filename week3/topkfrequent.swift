/*

Given a non-empty array of integers, return the k most frequent elements.

For example,
Given [1,1,1,2,2,3] and k = 2, return [1,2].

Note: 
You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
Your algorithm's time complexity must be better than O(n log n), where n is the array's size.

*/

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
  
        for num in nums {
            guard let times = map[num] else {
                map[num] = 1
                continue
            }
            map[num] = times + 1
        }
  
        var keys = Array(map.keys)
        keys.sort() {
            let value1 = map[$0]
            let value2 = map[$1]
            return value1! > value2!
        }
  
        return Array(keys[0..<k])
    }
}