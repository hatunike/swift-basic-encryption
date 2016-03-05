//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum TwoNumberSigns {
    case Positive
    case Negative
    case Different
    
    static func signsForTwoBigIntegers(a:BigInteger, b:BigInteger) -> TwoNumberSigns {
        switch a.isNegative {
        case true where b.isNegative == true:
            return .Negative
        case false where b.isNegative == false:
            return .Positive
        default:
            return .Different
        }
    }
}

func +(left:[Int], right:[Int]) -> [Int] {
    
    let fewerDigitsReversed:[Int] = left.count < right.count ? left.reverse() : right.reverse()
    let moreDigitsReversed:[Int] = left.count < right.count ? right.reverse() : left.reverse()
    
    var carryOver = 0
    var result = [Int]()
    for (index, moreDigit) in moreDigitsReversed.enumerate() {
        var sum = 0
        if index < fewerDigitsReversed.count {
            let lowerDigit = fewerDigitsReversed[index]
            sum = moreDigit + lowerDigit + carryOver
        } else {
            sum = moreDigit + carryOver
        }
        
        if sum > 9 {
            carryOver = 1
            result.append(sum - 10)
        } else {
            result.append(sum)
            carryOver = 0
        }
    }
    return result.reverse()
}


struct BigInteger {
    let digits:[Int]
    let isNegative:Bool
    
    init(value:String) {
        isNegative = value[value.startIndex] == "-" ? true : false
        if isNegative {
            digits = value.characters.dropFirst().flatMap{Int(String($0))}
        } else {
            digits = value.characters.flatMap{Int(String($0))}
        }
    }
    init(value:[Int], negative:Bool = false) {
        digits = value
        isNegative = negative
    }
    
    func description() -> String {
        return digits.flatMap { String($0) }.joinWithSeparator("")
    }
    
    func add(value:BigInteger) -> BigInteger {
        
        switch TwoNumberSigns.signsForTwoBigIntegers(self, b: value) {
        case .Positive:
            return BigInteger(value: self.digits + value.digits)
        case .Negative:
            return BigInteger(value: self.digits + value.digits, negative:true)
        case .Different:
            print("Different")
        }
        return self
    }
}

func *(left:BigInteger, right:BigInteger) -> BigInteger {
    return BigInteger(value: "123")
}

func +(left:BigInteger, right:BigInteger) -> BigInteger {
    return left.add(right)
}

//22312341234123412354123412341234123412341234123412341234123412341234123412341234
//12343212345661341234123231234534523452345234523454543234523452341241234123451234
//34655553579784753588246643575768646864686468646866884468646864682475357535792468

let intA = BigInteger(value: "22312341234123412354123412341234123412341234123412341234123412341234123412341234")

let intB = BigInteger(value: "12343212345661341234123231234534523452345234523454543234523452341241234123451234")

let result = intA * intB

let addResult = intA + intB

result.description()


addResult.description()


