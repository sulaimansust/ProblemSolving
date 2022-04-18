package beginner.array;

import java.util.HashMap;

/// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/578/
public class ContainsDuplicate {
    public boolean containsDuplicate(int[] nums) {
        HashMap<Integer, Integer> map = new HashMap<>();
        for(int i=0;i<nums.length;i++) {
            if(map.get(nums[i]) != null) {
                map.put(nums[i],map.get(nums[i])+1);
            } else {
                map.put(nums[i], 1);
            }
        }
        if(map.keySet().size() == nums.length) {
            return  false;
        }
        return true;
    }
}
