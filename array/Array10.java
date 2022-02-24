import java.util.ArrayList;
import java.util.List;

public class Array10 {
    public static boolean isValidSudoku(char[][] board) {
        for (int i = 0; i < board.length; i++) {
            List<Character> row = new ArrayList<>();
            List<Character> col = new ArrayList<>();
            for (int j = 0; j < board.length; j++) {

                if ((row.contains(board[i][j]))
                        || col.contains(board[j][i])) {
                    return false;
                } else {
                    if (board[i][j] != '.')
                        row.add(board[i][j]);
                    if (board[j][i] != '.')
                        col.add(board[j][i]);
                }
                if (i % 3 == 0 && j % 3 == 0) {
                    if (!checkSubBox(board, i, j))
                        return false;
                }
            }
        }
        return true;
    }

    private static boolean checkSubBox(char[][] board, int oi, int oj) {
        List<Character> subBox = new ArrayList<>();
        for (int i = oi; i < oi + 3; i++) {
            for (int j = oj; j < oj + 3; j++) {
                if (board[i][j] != '.') {
                    if (subBox.contains(board[i][j]))
                        return false;
                    else
                        subBox.add(board[i][j]);
                }
            }
        }
        return true;

    }

    public static void main(String[] args) {
        char[][] board = {  { '.', '.', '.',    '.', '5', '.',      '.', '1', '.' },
                            { '.', '4', '.',    '3', '.', '.',      '.', '.', '.' }, 
                            { '.', '.', '.',    '.', '.', '3',      '.', '.', '1' },

                            { '8', '.', '.',    '.', '.', '.',      '.', '2', '.' }, 
                            { '.', '.', '2',    '.', '7', '.',      '.', '.', '.' },
                            { '.', '1', '5',    '.', '.', '.',      '.', '.', '.' }, 
                            
                            { '.', '.', '.',    '.', '.', '2',      '.', '.', '.' },
                            { '.', '2', '.',    '9', '.', '.',      '.', '.', '.' }, 
                            { '.', '.', '4',    '.', '.', '.',      '.', '.', '.' } };
        System.out.println(isValidSudoku(board));
    }
}
