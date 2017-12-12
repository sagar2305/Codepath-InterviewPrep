/*
Implement int sqrt(int x).

Compute and return the square root of x.

x is guaranteed to be a non-negative integer.


Example 1:

Input: 4
Output: 2
Example 2:

Input: 8
Output: 2
Explanation: The square root of 8 is 2.82842..., and since we want to return an integer, the decimal part will be truncated.
 */
 
class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 || x == 1 {
            return x
        }
        
        var result = 1
        var i = 1
        while result < x {
            i += 1
            result = i * i
            
            if result == x {
                return i
            }
        }
        
        print("i = \(i)")
        return i - 1
    }
}