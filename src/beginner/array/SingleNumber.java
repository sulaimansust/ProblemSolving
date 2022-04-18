package beginner.array;

import java.util.HashMap;

/// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/
public class SingleNumber {
    public int singleNumber(int[] nums) {
        HashMap<Integer, Integer> map = new HashMap<>();
        for (int i = 0; i < nums.length; i++) {
            if (map.get(nums[i]) == null) {
                map.put(nums[i], 1);
            } else {
                map.put(nums[i], map.get(nums[i])+ 1);
            }
        }
        for (Integer key :
                map.keySet()) {
            if (map.get(key) == 1) {
                return key;
            }
        }
        return -1;
    }
}
