/*
You are given a string. The only operation allowed is to insert characters in the beginning of the string. How many minimum characters are needed to be inserted to make the string a palindrome string

Example:
Input: ABC
Output: 2
Input: AACECAAAA
Output: 2


*/

public class Solution {
    
    public boolean isPalindrome(String A) {
        if (A.length() < 2) {
            return true;
        }
        
        // System.out.println("A = "+ A);
        return (A.charAt(0) == A.charAt(A.length()-1)) && isPalindrome(A.substring(1, A.length()-1));
    }
    
    public int solve(String A) {
        if (isPalindrome(A)) {
            return 0;
        }
        
        return 1 + solve(A.substring(0, A.length()-1));
    }
}
