class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var setVersion = Set(nums)

        if setVersion.count < nums.count {
            return true
        }
        return false
    }
}
