
import Foundation

extension String {
    var asciiValue: UInt32 {
        guard let first = characters.first where characters.count == 1 else  { return 0 }
        return first.unicodeScalarsValue
    }
    func asciiValueAt(pos pos: UInt32) -> UInt32 {
        guard characters.count > 0 && Int(pos) < characters.count else  { return 0 }
        return Array(characters)[Int(pos)].unicodeScalarsValue
    }
}
extension Character {
    var unicodeScalarsValue: UInt32 {
        return String(self).unicodeScalars.first!.value
    }
}


func publicKey() -> Int {
	return 3
}

func privateKey() -> Int {
	return 3 * publicKey()
}

print("count \(Process.arguments.count)")
if Process.arguments.count == 2 {
	let messageToEncrypt = Process.arguments[1]
	print("Public Key : \(publicKey())")
	print("Private Key : \(privateKey())")
	print("ascii message : \(asciiMessage(messageToEncrypt))")
	print("Encrypted Text : SFDNA-\(messageToEncrypt)-FSJDAN")
}



func largePrimeNumberGeneration() -> (String, String) {
	//1 - Get random number
	//2 - Test isPrime

	//3 - If not isPrime++ test again
	return ("test","test")
}





