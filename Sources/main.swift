
import Foundation

print("count \(Process.arguments.count)")
if Process.arguments.count == 2 {
	let messageToEncrypt = Process.arguments[1]
	
	let publicKey = publicKey()

}

func publicKey() -> String {
	return "public"
}




