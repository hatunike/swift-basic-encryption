
import Foundation

print("count \(Process.arguments.count)")
if Process.arguments.count == 2 {
	let messageToEncrypt = Process.arguments[1]
	print("Public Key : \("goes here")")
	print("Encrypted Text : \("goes here")")
}

func publicKey() -> String {
	return "public"
}

func largePrimeNumberGeneration() -> (String, String) {
	//1 - Get random number
	//2 - Test isPrime

	//3 - If not isPrime++ test again
	return ("test","test")
}





