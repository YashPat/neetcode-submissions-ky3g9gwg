class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
         var freqDict = [Int: Int]()

         for num in nums {
            freqDict[num, default: 0] += 1
         }

         var arr = Array(repeating: [Int](), count: nums.count + 1)
         for (key, value) in freqDict {
            arr[value].append(key)
         }

         var result = [Int]()
         for i in arr.indices.reversed() { 
            for num in arr[i] {
                result.append(num)
                if (result.count == k){
                    return result
                }
            }
         }
         return result
    }
}
