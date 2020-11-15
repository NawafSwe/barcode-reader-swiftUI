//
//  barcode_readerApp.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import SwiftUI

@main
struct barcode_readerApp: App {
    var body: some Scene {
        WindowGroup {
            BarcodeScannerView(errorMessage: .constant("someValue"), showAlert: .constant(false))
        }
    }
}
