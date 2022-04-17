package beginner;

import beginner.array.RemoveDuplicateFromSortedArray;
import beginner.array.RotateArray;
import common.MPrinter;

public class MainArray {
    public static void main(String[] args) {
        // 727
//        RemoveDuplicateFromSortedArray  test = new RemoveDuplicateFromSortedArray();
//        int[] nums = {1,2,2,3,4,5,5,6};
//        MPrinter.print(nums);
//        System.out.println(test.removeDuplicates(nums));

        // 646
        int[] nums = {1,2,2,3,4,5,5,6};
        RotateArray rotateArray = new RotateArray();
        rotateArray.rotate(nums, 3);
        MPrinter.print(nums);
    }
}
