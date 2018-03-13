//
//  Device.swift
//  sapataz
//
//  Created by Jorge Moura on 15/05/2017.
//
//

import Foundation

///Device is a struct that groups all the data about the device. It is a convenience struct.
public struct Device {

    ///Model is the Device Model and can have values such as "iPhone", "iPad" or "Apple TV".
    public let model: String

    ///Operating System is the Device OS and can have values such as "iOS" or "tvOS".
    public let operatingSystem: String

    ///Version is the Device OS version and can have values such as "10.1".
    public let version: String

    ///OS Version is the concatenation of "operatingSystem" with "version". Can be something as "iPad 10.3"
    public let osVersion: String
}
