//
//  Alert.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import Foundation
import SwiftUI
struct AlertItem : Identifiable{
    var id = UUID()
    let title: String
    let message:String
    let dismissButton: Alert.Button
    
    
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Error", message: "invalid input device", dismissButton: .default(Text("OK")))
    static let invalidScannedValue = AlertItem(title: "Error", message: "invalid Scanned Value", dismissButton: .default(Text("OK")))
}
