//: [Previous](@previous)

import Foundation

enum APIError: Error {
    case noConnection(String)
    case unavailable(String)
}

//func fetchData() throws {
//    // for some reason it failed
//    throw API.noConnection
//}

func fetchData() -> APIError {
    // for some reason it failed
    return APIError.noConnection("test")
}

let error = fetchData()

switch error {
    case .noConnection(let message):
        print(message)
    case .unavailable(let message):
        print(message)
    default:
        print("nothing is wrong")
}


//: [Next](@next)
