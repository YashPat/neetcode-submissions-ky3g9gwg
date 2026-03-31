class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var lowInd = 0
        var highInd = numbers.count - 1
        var curSum = numbers[lowInd] + numbers[highInd]

        while (lowInd < highInd){
            if (curSum == target){
                return [lowInd + 1, highInd + 1]
            } else if (curSum < target){
                lowInd += 1
            } else {
                highInd -= 1
            }
            curSum = numbers[lowInd] + numbers[highInd]
        }
        return []
    }
}
