# FirstNonRepeated

This is a simple Swift function that takes a string as input and returns the first non-repeated character in the string, or an empty string if there is no non-repeated character. This function is intended for use in Swift iOS projects.

## Inputs
The firstNonRepeated function takes a single string s as input. The input string can contain lowercase and/or uppercase English letters.

## Outputs
The output of the firstNonRepeated function is a string representing the first non-repeated character in the input string, or an empty string if there is no non-repeated character.

## Usage
To use the firstNonRepeated function, simply copy the following code into your Swift project:

```swift
func firstNonRepeated(_ str: String) -> String {
    var dict = [Character: Int]()
    for char in str {
        dict[char, default: 0] += 1
    }
    for char in str {
        if dict[char] == 1 {
            return String(char)
        }
    }
    return ""
}
```
Then, you can call the function with a string argument to find the first non-repeated character in the string:

```swift
let result1 = firstNonRepeated("hello") // "h"
let result2 = firstNonRepeated("aabcc") // "b"
let result3 = firstNonRepeated("aabbcc") // ""
```

That's it! Now you can use the firstNonRepeated function in your iOS project to find the first non-repeated character in a string.

