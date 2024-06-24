//
//  ContentView.swift
//  URLS
//
//  Created by DISMOV on 21/06/24.
//

import SwiftUI
import Awesome

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("tap")
                let urlString = "fb://events/2111475325889787"
                if let url = URL(string: urlString) {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url)
                    }
                }
            } label: {
                Awesome.Brand.facebookSquare.image
                    .size(45)
                    .foregroundColor(.blue)
                    .backgroundColor(.white)
                Text("facebook")
                    
                    .padding(.vertical, 10)
            }
            .padding(.horizontal, 20)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Capsule())
            
            Button {
                print("tap settings")
                let urlString = UIApplication.openSettingsURLString 
                if let url = URL(string: urlString) {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url)
                    }
                }
            } label: {
                Image(systemName: "gear")
                Text("Settings")
                    
                    .padding(.vertical, 10)
            }
            .padding(.horizontal, 20)
            .background(.gray)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
