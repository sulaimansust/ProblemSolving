package beginner;

import beginner.array.RemoveDuplicateFromSortedArray;
import common.MPrinter;

public class MainArray {
    public static void main(String[] args) {
        RemoveDuplicateFromSortedArray  test = new RemoveDuplicateFromSortedArray();
        int[] nums = {1,2,2,3,4,5,5,6};
        MPrinter.print(nums);
        System.out.println(test.removeDuplicates(nums));

    }
}
