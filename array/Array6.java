import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Array6 {
    public static int[] intersect(int[] nums1, int[] nums2) {
        List<Integer> result = new ArrayList<>();
        List<Integer> list2 = Arrays.stream(nums2).boxed().collect(Collectors.toList());
        for (int num1 : nums1) {
            if (list2.contains(num1)) {
                result.add(num1);
                list2.remove(list2.indexOf(num1));
            }
            if(list2.isEmpty())
                break;
        }
        return result.stream().mapToInt(e -> e).toArray();
    }

    public static void main(String[] args) {
        int[] nums1 = { 4, 9, 5 };
        int[] nums2 = { 9, 4, 9, 8, 4 };
        System.out.println(Arrays.toString(intersect(nums1, nums2)));
    }
}
