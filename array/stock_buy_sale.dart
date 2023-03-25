// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/564/

void main(List<String> args) {
  List<int> prices = [6, 1, 3, 2, 4, 7];

  int profit = Solution().maxProfit(prices);

  print(profit);
}

class Solution {
  int maxProfit(List<int> prices) {
    int profit = 0;

    for (var i = 1; i < prices.length; i++) {
      if (prices[i] > prices[i - 1]) {
        profit += prices[i] - prices[i - 1];
      }
    }

    return profit;
  }
}
