//
//  ContentView.swift
//  GOiOS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2022/12/01.
//
import UIKit
import SwiftUI

struct SignInView: View {
    @State private var id : String = ""
    @State private var pw : String = ""
    @State private var showPassword = false
//    @State private var isLogin: Bool = false
//    @State private var showingAlert: Bool = false
//    @State private var correctId: String = ""
//    @State private var correctPw: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("GO X iS")
                    .font(.largeTitle)
                    .bold()
                    .navigationTitle("")
                
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
                
//                NavigationLink(destination: SignUpView()) {
                    Button (action: {
                        
                    }) {
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .font(.caption)
                            .underline()
                            .foregroundColor(.black)
                            .navigationTitle("")
                    }
                }
                .frame(width: 300, height: 50)
            }
            .padding()
        }
    }
}

//func signin(_ id: String, _ pw: String) {
//    if(correctId == id && correctPw == pw ) {
//        self.pw = ""
//        isLogin = true
//    } else {
//        showingAlert = true
//    }
//}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
