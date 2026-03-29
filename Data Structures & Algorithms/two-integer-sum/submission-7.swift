class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var freqDict = [Int:Int]()

        for i in 0..<nums.count {
            let differenceNeeded = target - nums[i]
            if let otherIndFound = freqDict[differenceNeeded] {
                return [otherIndFound, i]
                break
            } else {
                freqDict[nums[i]] = i
            }
        }
        return []
    }
}
