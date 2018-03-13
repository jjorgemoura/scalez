//: Playground - noun: a place where people can play

import sapataz
import UIKit

let deviceIdentification = UIDevice.current.identification()

print("OS = \(deviceIdentification.operatingsSystem)")
print("OS Version = \(deviceIdentification.osVersion)")

let uniqueUI = Identifier().generate()
print(uniqueUI)
