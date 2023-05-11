import UIKit

func firstNonRepeated(_ s: String) -> String {
    var dict = [Character:Int]()
    for char in s {
        dict[char, default: 0] += 1
    }
    for char in s {
        if dict[char] == 1 {
            return String(char)
        }
    }
    return ""
}

print(firstNonRepeated("hello"))
print(firstNonRepeated("aabcc"))
print(firstNonRepeated("aabbcc"))
