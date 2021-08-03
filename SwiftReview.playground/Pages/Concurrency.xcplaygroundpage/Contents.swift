//: [Previous](@previous)

import Foundation

// serial
// concurrent
// async


//Grand Central Dispatch
func displayPhotos(completionHandler: @escaping (Error?) -> Void) {
    DispatchQueue.global().async {
        //do the heavy stuff here i.e. processing/networking
        
        DispatchQueue.main.async {
            completionHandler(nil)
        }
    }
}


//: [Next](@next)
