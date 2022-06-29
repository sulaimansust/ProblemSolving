package beginner.searchingandsorting;

public class SearchingAndSorting {
    public void merge(int[] nums1, int m, int[] nums2, int n) {
        int position1 =0, position2 = 0;
        for(int i=0;i< m+n; i++) {
            if(nums1[position1] > nums2[position2]) {
                int temp = nums1[position1];
                nums1[position1] = nums2[position2];
            }
        }
    }
}
