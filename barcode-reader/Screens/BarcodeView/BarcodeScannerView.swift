//
//  ContentView.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import SwiftUI
struct BarcodeScannerView: View {
  
    @StateObject private var viewModel = BarcodeScannerViewModel()
    var body: some View {
        NavigationView{
            
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode,alertItem: $viewModel.alertItem)
                .frame(maxWidth: .infinity,maxHeight: 300)
                //custom spacer
                Spacer().frame(height:60)
         
                Label("Scanned barcode :", systemImage: "barcode.viewfinder")
                    .font(.title)
                
              
                Text(viewModel.scannedCode.isEmpty ? "Not Yet Scanned" : viewModel.scannedCode)
                    .foregroundColor(viewModel.scannedCode.isEmpty ? .red : .green)
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem){
                alert in
                Alert(title: Text(alert.title), message: Text(alert.message), dismissButton: alert.dismissButton)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
