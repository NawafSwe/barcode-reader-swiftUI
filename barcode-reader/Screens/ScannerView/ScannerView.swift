//
//  ScannerView.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {

    @ObservedObject  var viewModel : BarcodeScannerViewModel
 
 
    func makeCoordinator() -> Coordinator {
        return Coordinator(barcodeScannerViewModel:viewModel)
    }
    
    func makeUIViewController(context: Context) -> ScannerVC {
        //context which is the scanner view
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    final class Coordinator:NSObject , ScannerVCDelegate{
        private let  barcodeScannerViewModel: BarcodeScannerViewModel
        
        init(barcodeScannerViewModel:BarcodeScannerViewModel) {
            self.barcodeScannerViewModel = barcodeScannerViewModel
        }
        func didFind(barcode: String) {
            //setting the barcode
            self.barcodeScannerViewModel.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error{
                
                case .invalidDeviceInput:
                    barcodeScannerViewModel.alertItem = AlertContext.invalidDeviceInput
                    
                case .invalidScannedValue:
                    barcodeScannerViewModel.alertItem = AlertContext.invalidScannedValue
                    
            }
        }
    }
}
