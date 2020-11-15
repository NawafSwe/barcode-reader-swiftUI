//
//  ContentView.swift
//  barcode-reader
//
//  Created by Nawaf B Al sharqi on 15/11/2020.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView{
            
            VStack{
              ScannerView()
                .frame(maxWidth: .infinity,maxHeight: 300)
                //custom spacer
                Spacer().frame(height:60)
         
                Label("Scanned barcode :", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("")
                Text("Not Yet Scanned")
                    .foregroundColor(.green)
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
        BarcodeScannerView()
    }
}
