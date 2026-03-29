class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        var main: [Character : Int] = [:]
        for char in s { 
            main[char, default: 0] += 1
        }
        for char in t {
            main[char, default: 0] -= 1
            if (main[char] ?? -1 < 0) { 
                return false
            }
        }
        return true
    }
}
