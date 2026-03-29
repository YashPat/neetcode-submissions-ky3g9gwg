class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groupedAnagrams: [[Int] : [String]] = [:]

        guard let aAscii = Character("a").asciiValue else {
            return [[]]
        }

        for str in strs {
            var count = [Int](repeating: 0, count: 26)

            for char in str {
                guard let currentAscii = char.asciiValue else {
                    continue
                }
                let ind = Int(currentAscii) - Int(aAscii)
                count[ind] += 1
            }
            groupedAnagrams[count, default: []].append(str)
        }
        return Array(groupedAnagrams.values)
    }
}
