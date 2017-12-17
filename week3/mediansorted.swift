class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        let m = nums1.count
        let n = nums2.count

        if m > n {
            return findMedianSortedArrays(nums2, nums1)
        }

        var tmpMin = 0
        var tmpMax = m
        
        while tmpMin <= tmpMax {
            
            let i = (tmpMin + tmpMax) / 2
            let j = ((m + n + 1) / 2) - i
            if j > 0 && i < m && nums2[j-1] > nums1[i] {
                tmpMin = i + 1
            } else if i > 0 && j < n && nums1[i-1] > nums2[j] {
                tmpMax = i - 1
            } else {
                var firstNum: Int
                if i == 0 {
                    firstNum = nums2[j-1]
                }
                else if j == 0 {
                    firstNum = nums1[i-1]
                }
                else {
                    firstNum = max(nums1[i-1], nums2[j-1])
                }

                // if (m + n) is odd
                if (m+n) & 1 != 0 {
                    return Double(firstNum)
                }

                var secondNum: Int
                if i == m {
                    secondNum = nums2[j]
                } else if j == n {
                    secondNum = nums1[i]
                } else {
                    secondNum = min(nums1[i], nums2[j])
                }
                
                return Double((firstNum + secondNum))/2.0
            }
        }
        
        return 0.0
    }
}