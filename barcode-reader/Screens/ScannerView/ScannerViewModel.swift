//
//  ScannerViewModel.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import Foundation

final class ScannerViewModel : ObservableObject{
    @Published var scannedCode : String?
    @Published var alertItem: AlertItem?
    
}
