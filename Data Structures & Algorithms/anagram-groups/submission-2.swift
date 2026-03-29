class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagrams = [String : [String]]()

        for i in 0..<strs.count {
            let currentStr = strs[i]
            let sortedStr = String(currentStr.sorted())

            anagrams[sortedStr, default: []].append(currentStr)
        }

        var result = [[String]]()

        for val in anagrams.values {
            result.append(val)
        }
        return result
    }
}
