package common;

public class MPrinter {
    public static void print(int[] items) {
        for (int item : items) {
            System.out.printf(item + " ");
        }
        System.out.println();
    }
    public static void print(char[] items) {
        for (char item : items) {
            System.out.printf(item + " ");
        }
        System.out.println();
    }
}
