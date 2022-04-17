package beginner.array;

import common.MPrinter;
/// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/
public class RemoveDuplicateFromSortedArray {
    public int removeDuplicates(int[] nums) {
        int position = 0;

        for (int i = 1; i<nums.length; i++) {
            if(nums[position] != nums[i]) {
                position++;
                nums[position] = nums[i];
            }
        }
        MPrinter.print(nums);
        System.out.println(position+1);
        return position+1;
    }
}