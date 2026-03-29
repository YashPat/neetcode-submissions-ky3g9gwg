class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var setOfNum = Set<Int>()
        for number in nums {
            if (setOfNum.contains(number)){
                return true
            }
            setOfNum.insert(number)
        }
        return false
    }
}
