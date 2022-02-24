import java.util.Arrays;

public class Array11 {
    public static void rotate(int[][] matrix) {
        int size = matrix.length;
        int[][] cloneMatrix = Arrays.stream(matrix)
                .map((int[] row) -> row.clone())
                .toArray((int length) -> new int[length][]);

        for (int i = 0; i < size; ++i)
            for (int j = 0; j < size; ++j)
                matrix[i][j] = cloneMatrix[size - j - 1][i];

    }

    public static void main(String[] args) {
        int[][] matrix = { { 1, 2, 3 }, { 4, 5, 6 }, { 7, 8, 9 } };
        rotate(matrix);
        for (int[] ints : matrix) {
            System.out.println(Arrays.toString(ints));
        }
    }
}
