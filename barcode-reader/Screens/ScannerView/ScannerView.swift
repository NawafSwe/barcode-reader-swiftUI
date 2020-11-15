//
//  ScannerView.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {

    @Binding var scannedCode : String
    @Binding var alertItem: AlertItem?
 
 
    func makeCoordinator() -> Coordinator {
        return Coordinator(scannerView:self)
    }
    
    func makeUIViewController(context: Context) -> ScannerVC {
        //context which is the scanner view
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    final class Coordinator:NSObject , ScannerVCDelegate{
        private let  scannerView: ScannerView
        
        init(scannerView:ScannerView) {
            self.scannerView = scannerView
        }
        func didFind(barcode: String) {
            //setting the barcode
            self.scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error{
                
                case .invalidDeviceInput:
                    scannerView.alertItem = AlertContext.invalidDeviceInput
                    
                case .invalidScannedValue:
                    scannerView.alertItem = AlertContext.invalidScannedValue
                    
            }
        }
    }
}
