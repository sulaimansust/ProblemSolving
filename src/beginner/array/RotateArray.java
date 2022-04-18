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
    public void rotateLessMemory(int[] nums, int k) {
        k = k % nums.length;
        int position = 0;
        for(int i=nums.length - k; i<nums.length; i++) {
            int temp = nums[i];
            nums[i] = nums[position];
            nums[position++] = temp;
        }
        MPrinter.print(nums);
//        int lastPosition = nums.length - 1;
//        for(int j = nums.length - k -1; j>=position;j--) {
//            System.out.printf(nums[j]+" "+nums[lastPosition]+"\n");
//            int temp = nums[j];
//            nums[j] = nums[lastPosition];
//            nums[lastPosition--] = temp;
//            if(j==position) {
//                System.out.println("Yes");
//            }
//        }

        int count = nums.length - k - 1;
        int startPosition = nums.length - k -1;
        int endPosition = nums.length-1;
        while(count>=0) {
//            System.out.println(nums[startPosition]+ " "+nums[endPosition]+ " count: "+count);

            int temp = nums[startPosition];
            nums[startPosition] = nums[endPosition];
            nums[endPosition] = temp;
            startPosition--;
            endPosition--;
            count--;
            MPrinter.print(nums);
        }
        MPrinter.print(nums);
    }
}
