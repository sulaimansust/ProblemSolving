package beginner.array;
/// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/559/
public class PlusOne {
    public int[] plusOne(int[] digits) {
        int carry = 0;
        for(int i=digits.length - 1; i>=0;i--) {
            int sum;
            if (digits.length-1 == i) {
                sum = digits[i] + 1 + carry;
            }else {
                sum = digits[i] + carry;
                carry = 0;
            }
            if (sum >= 10 ){
                digits[i] = sum % 10;
                carry = 1;
            } else {
                digits[i] = sum;
            }
        }
        int[] output = new int[digits.length+1];
        if (carry != 1) {
            output[0] = carry;
            for(int i=1;i<output.length; i++) {
                output[i] = digits[i-1];
            }
        }

        return output;
    }
}
