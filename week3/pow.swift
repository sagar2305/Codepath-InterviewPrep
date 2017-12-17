/*
50. Pow(x, n)


Example 1:

Input: 2.00000, 10
Output: 1024.00000
Example 2:

Input: 2.10000, 3
Output: 9.26100
*/

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        var x = x
        var n = n
        if n == 0 {
            return 1;
        }
        if n < 0 {
            n = -n;
            x = 1/x;
        }
        return ( n % 2 == 0) ? myPow(x*x, n/2) : x * myPow(x*x, n/2);
    }
}