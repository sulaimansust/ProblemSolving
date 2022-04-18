package beginner;

import beginner.array.ContainsDuplicate;
import beginner.array.RemoveDuplicateFromSortedArray;
import beginner.array.RotateArray;
import beginner.array.SingleNumber;
import common.MPrinter;

public class MainArray {
    public static void main(String[] args) {
        // 727
//        RemoveDuplicateFromSortedArray  test = new RemoveDuplicateFromSortedArray();
//        int[] nums = {1,2,2,3,4,5,5,6};
//        MPrinter.print(nums);
//        System.out.println(test.removeDuplicates(nums));

        // 646
        int[] nums = {1,2,3,4,5,6,7,8,9,10,10};
//        MPrinter.print(nums);
//
//        RotateArray rotateArray = new RotateArray();
////        rotateArray.rotate(nums, 3);
//        rotateArray.rotateLessMemory(nums, 3);
//        MPrinter.print(nums);

        // 578
//        ContainsDuplicate containsDuplicate = new ContainsDuplicate();
//        boolean test = containsDuplicate.containsDuplicate(nums);
//        System.out.println(test);

        // 549
        int[] number = {1,2,1,2,3,3,4,5,6,5,6};
        SingleNumber singleNumber = new SingleNumber();
        int result = singleNumber.singleNumber(number);
        System.out.println(result);
    }
}
