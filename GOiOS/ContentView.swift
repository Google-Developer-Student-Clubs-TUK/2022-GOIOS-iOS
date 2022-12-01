//
//  ContentView.swift
//  GOiOS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2022/12/01.
//
import UIKit
import SwiftUI

struct ContentView: View {
    @State var id : String = ""
    @State var pw : String = ""
    
    var body: some View {
        VStack {
            Text("GO X iOS")
                .font(.largeTitle)
                .bold()
            
            TextField("Enter your ID", text: $id)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
            
            TextField("Enter your PW", text: $pw)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
            
            Button (action: {
                
            }) {
                Text("Sign in")
                    .padding()
                    .font(.headline)
                    .background(Capsule().stroke(.blue, lineWidth: 3))
            }
            
            Button (action: {
            
            }) {
                Text("Sign Up")
                    .font(.caption)
                    .underline()
                    .foregroundColor(.black)
                    .frame(alignment: .bottomTrailing)
            }
        }
        .frame(alignment: .bottomTrailing)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
