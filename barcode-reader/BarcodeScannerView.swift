//
//  ContentView.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import SwiftUI

struct AlertItem : Identifiable{
    var id = UUID()
    let title: String
    let message:String
    let dismissButton:Alert.Button
    
    
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Error", message: "invalid input device", dismissButton: .default(Text("OK")))
    static let invalidScannedValue = AlertItem(title: "Error", message: "invalid Scanned Value", dismissButton: .default(Text("OK")))
}
struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?
    var body: some View {
        NavigationView{
            
            VStack{
                ScannerView(scannedCode: self.$scannedCode,alertItem: self.$alertItem)
                .frame(maxWidth: .infinity,maxHeight: 300)
                //custom spacer
                Spacer().frame(height:60)
         
                Label("Scanned barcode :", systemImage: "barcode.viewfinder")
                    .font(.title)
                
              
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .foregroundColor(self.scannedCode.isEmpty ? .red : .green)
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem){
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
