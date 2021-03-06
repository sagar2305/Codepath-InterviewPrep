/* You are in an infinite 2D grid where you can move in any of the 8 directions :

 (x,y) to 
    (x+1, y), 
    (x - 1, y), 
    (x, y+1), 
    (x, y-1), 
    (x-1, y-1), 
    (x+1,y+1), 
    (x-1,y+1), 
    (x+1,y-1) 
You are given a sequence of points and the order in which you need to cover the points. Give the minimum number of steps in which you can achieve it. You start from the first point. */

public class Solution {
    // X and Y co-ordinates of the points in order.
    // Each point is represented by (X.get(i), Y.get(i))
    public int coverPoints(ArrayList<Integer> X, ArrayList<Integer> Y) {
        
        int answer = 0;
        
        for (int i=1; i<X.size(); i++) {
            int xPointA = X.get(i-1);
            int yPointA = Y.get(i-1);
            
            int xPointB = X.get(i);
            int yPointB = Y.get(i);
            
            answer = answer + (Math.abs(xPointB-xPointA) < Math.abs(yPointB-yPointA) ? Math.abs(yPointB-yPointA) : Math.abs(xPointB-xPointA));
        }
        
        return answer;
    }
}
