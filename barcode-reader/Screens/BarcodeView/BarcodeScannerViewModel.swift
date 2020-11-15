//
//  BarcodeScannerViewModel.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel  : ObservableObject{
    @Published  var scannedCode = ""
    @Published  var alertItem: AlertItem?
    
}
