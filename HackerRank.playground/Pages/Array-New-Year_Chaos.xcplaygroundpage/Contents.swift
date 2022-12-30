import UIKit

func checkMagazine(magazine: [String], note: [String]) -> Void {
    var magazineMap:[String: Int] = [:]
 
    for item in magazine {
        magazineMap[item] = (magazineMap[item] ?? 0) + 1
    }
    
    for item in note {
        if (magazineMap[item] ?? 0) < 1 {
            print("No")
            return
        }
        magazineMap[item] = (magazineMap[item] ?? 0) - 1
    }
    print("Yes")
    
}
var magTemp = "two times three is not four"
var noteTemp = "two times two is four"
let note: [String] = noteTemp.split(separator: " ").map {
    String($0)
}
let magazine: [String] = magTemp.split(separator: " ").map {
    String($0)
}
checkMagazine(magazine: magazine, note: note)

var s1 = "abcd"
var s2 = "acb"
s1 > s2
