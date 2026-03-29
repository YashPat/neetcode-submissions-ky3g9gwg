class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased())

        var goingUpInd = 0
        var goingDownInd = s.count - 1
        
        while (goingDownInd > goingUpInd){
            if (!self.isAlphanumeric(chars[goingDownInd])){
                goingDownInd -= 1
                continue
            }
            if (!self.isAlphanumeric(chars[goingUpInd])){
                goingUpInd += 1
                continue
            }
            if (chars[goingDownInd] != chars[goingUpInd]){
                return false
            }
            goingDownInd -= 1
            goingUpInd += 1
        }
        return true
    }

    func isAlphanumeric(_ char: Character) -> Bool {
        return (char.isLetter || char.isNumber)
    }
}
