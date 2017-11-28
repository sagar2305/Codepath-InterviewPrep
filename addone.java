/*
Given a non-negative number represented as an array of digits,

add 1 to the number ( increment the number represented by the digits ).

The digits are stored such that the most significant digit is at the head of the list.

Example:

If the vector has [1, 2, 3]

the returned vector should be [1, 2, 4]

as 123 + 1 = 124.
*/

public class Solution {
    
	public ArrayList<Integer> plusOne(ArrayList<Integer> a) {
	   
	   int i = a.size() -1;
	   
	   int newVal = a.get(i) + 1;
	   int carry = 0;
	   
	   if (newVal < 10) {
	       a.set(i, newVal);
	   } else {
	       a.set(i, 0);
	       carry = 1;
	       i -= 1;
	       while (carry > 0 && i >= 0) {
                newVal = a.get(i) + 1;
                if (newVal == 10) {
                    a.set(i, 0);
                    carry = 1;
                    i -= 1;
                } else {
                    a.set(i, newVal);
                    carry = 0;
                }
	       }
	       
	       if (carry == 1 && i < 0) {
	           a.add(0, 1);
	       } else {
	           a.set(i, newVal);
	       }
	   }
	   
	   while(a.get(0) == 0) {
	           a.remove(0);
	       }
	    
	    return a;
	}
}
