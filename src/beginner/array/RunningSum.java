package beginner.array;

/// https://leetcode.com/problems/running-sum-of-1d-array/
public class RunningSum {
    public int[] runningSum(int[] nums) {
        int sum = 0;
        for(int i = 0; i<nums.length; i++) {
            sum += nums[i];
            nums[i] = sum;
        }
        return nums;
    }
}
