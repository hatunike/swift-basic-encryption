
import Foundation

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
	print("Encrypted Text : SFDNA-\(messageToEncrypt)-FSJDAN")
}



func largePrimeNumberGeneration() -> (String, String) {
	//1 - Get random number
	//2 - Test isPrime

	//3 - If not isPrime++ test again
	return ("test","test")
}





