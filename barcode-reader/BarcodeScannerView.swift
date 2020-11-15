//
//  ContentView.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    @Binding  var errorMessage: String
    @Binding  var showAlert:Bool
    var body: some View {
        NavigationView{
            
            VStack{
                ScannerView(scannedCode: self.$scannedCode,showAlert: self.$showAlert , errorMessage: self.$errorMessage)
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
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView(errorMessage: .constant("error test"), showAlert: .constant(false))
    }
}
