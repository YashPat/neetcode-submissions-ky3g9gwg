class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var profit = 0

        for price in prices {
            let curProfit = price - minPrice
            if (curProfit > profit){
                profit = curProfit
            }

            if (price < minPrice){
                minPrice = price
            }
        }

        return profit
    }
}
