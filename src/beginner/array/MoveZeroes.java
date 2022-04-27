package beginner.array;

import common.MPrinter;

/// https://leetcode.com/explore/featured/card/top-interview-questions-easy/92/array/567/
/// Suggestions: Merge sort
public class MoveZeroes {
    // O(n*n)
    public void moveZeroes(int[] nums) {
        for (int i = 0; i < nums.length; i++) {
            int nextPosition = -1;
            if (nums[i] == 0) {
                for (int j = i + 1; j < nums.length; j++) {
                    if(nums[j] != 0) {
                        nextPosition = j;
                        break;
                    }
                }
                if(nextPosition != -1) {
                    int temp = nums[i];
                    nums[i] = nums[nextPosition];
                    nums[nextPosition] = temp;
                }
            }
        }
    }
}
