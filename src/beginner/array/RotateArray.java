package beginner.array;

import common.MPrinter;

/// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/
public class RotateArray {
    public void rotate(int[] nums, int k) {
        k = k % nums.length;
        int[] rotatedArray = new int[nums.length];
        int position = 0;
        for (int i = nums.length - k ; i<nums.length;i++) {
            rotatedArray[position++] = nums[i];
        }
        for(int j = 0; j < nums.length - k ; j++) {
            rotatedArray[position++] = nums[j];
        }
        for(int i=0; i< nums.length;i++) {
            nums[i] = rotatedArray[i];
        }
        MPrinter.print(rotatedArray);
    }
}
