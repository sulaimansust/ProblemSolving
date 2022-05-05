package beginner;
import beginner.string.ReverseString;

import java.util.Scanner;

public class MainString {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        char[] input;
        input = scanner.next().toCharArray();
        ReverseString reverseString = new ReverseString();
        reverseString.reverseString(input);
        System.out.println(input);
    }
}
