import UIKit
enum CustomError: Error {
    case networkingError(message: String)
    case coreDataSaveError(message: String)
}
func someDangerousCode(throwError: Bool) throws -> String {
    let returnMessage = "Did this make it?"
    if throwError {
        throw CustomError.networkingError(message: "A networking error was throw")
    }
    return returnMessage
}
let responseOne = try? someDangerousCode(throwError: true)
print("the responseOne is : \(String(describing: responseOne))")
let responseTwo = try? someDangerousCode(throwError: false)
print("the responseOne is : \(String(describing: responseTwo))")
do {
    let responseFour = try someDangerousCode(throwError: true)
    print("The responseFour is : \(String(describing: responseFour))")
}catch {
    
    print(error.localizedDescription)
    
}







