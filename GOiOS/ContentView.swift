//
//  ContentView.swift
//  GOiOS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2022/12/01.
//
import UIKit
import SwiftUI

struct ContentView: View {    
    @State private var id : String = ""
    @State private var pw : String = ""
    @State private var showPassword = false
    

    
    var body: some View {
        VStack {
            Text("GO X iS")
                .font(.largeTitle)
                .bold()
            
            VStack {
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    
                    TextField("Username", text: $id)
                        .disableAutocorrection(true)
                }
                .padding()
                .background(Capsule().fill(.tertiary))
                .padding()
                
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.secondary)
                    
                    if showPassword {
                        TextField("Password", text: $pw)
                    } else {
                        SecureField("Password", text: $pw)
                    }
                    Button(action: {
                        self.showPassword.toggle()
                    }, label: {
                        Image(systemName: "eye")
                            .foregroundColor(.secondary)
                    })
                    
                }
                .padding()
                .background(Capsule().fill(.tertiary))
                .padding()
            }
            
            Button (action: {
                
            }) {
                HStack {
                    Text("Sign in")
                        .padding()
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .foregroundColor(.white)
                }
                .frame(width: 200, height: 45)
                .background(Capsule().fill(.black))
                
            }
            .padding()
            
            HStack(alignment: .lastTextBaseline) {
                Button (action: {
                
                }) {
                    Text("Sign Up")
                        .font(.caption)
                        .underline()
                        .foregroundColor(.black)
                        
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
