//: [Previous](@previous)

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    var commonPrefix = ""
    
    let characters = Array(strs.first!)
    
    var hasMatchedCharacter = false
    
    for index in 0..<characters.count {
        var currentPrefix: String = String(characters[index])
        if hasMatchedCharacter {
            currentPrefix = "\(commonPrefix)\(currentPrefix)"
        }
        print(currentPrefix)
        var contains = true
        for item in strs {
            if !item.hasPrefix(currentPrefix) {
                contains = false
                break
            }
        }
        if contains {
            commonPrefix = String(currentPrefix)
            hasMatchedCharacter = true
        } else {
            hasMatchedCharacter = false
            break
        }
        print(hasMatchedCharacter)
        
    }
    
    return commonPrefix
}


let input = ["flower","flower","flower","flower"]


longestCommonPrefix(input)

//: [Next](@next)
