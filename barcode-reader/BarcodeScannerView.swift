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
              Rectangle()
                .frame(maxWidth: .infinity,maxHeight: 300)
      
         
                Label("Scanned barcode :", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("")
                Text("Not Yet Scanned")
                    .foregroundColor(.red)
                    .bold()
                    .font(.system(size:30))
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
