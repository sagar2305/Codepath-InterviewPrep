/*
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Example:

"A man, a plan, a canal: Panama" is a palindrome.

"race a car" is not a palindrome.

Return 0 / 1 ( 0 for false, 1 for true ) for this problem

 NOTE: You only need to implement the given function. Do not read input, instead use the arguments to the function. Do not print the output, instead return values as specified. Still have a doubt? Checkout Sample Codes for more details. 
*/

public class Solution {
	public int isPalindrome(String a) {
	    if (a.length() < 2) {
	        return 1;
	    }
	    
	    int startIndex = 0;
	    int endIndex = a.length()-1;
	    
	    while (startIndex <= endIndex) {
	        
	        char startChar = a.charAt(startIndex);
	        if (!Character.isLetterOrDigit(startChar)) {
	            startIndex += 1;
	            continue;
	        }
	        
	        char endChar = a.charAt(endIndex);
	        if (!Character.isLetterOrDigit(endChar)) {
	            endIndex -= 1;
	            continue;
	         }
	         
	       //  System.out.println("Start char = "+startChar + " end char = "+ endChar);
	         if (Character.toLowerCase(startChar) != Character.toLowerCase(endChar)) {
	             return 0;
	         } else {
	             startIndex += 1;
	             endIndex -= 1;
	         }
	    }
	    
	    return 1;
	}
}
