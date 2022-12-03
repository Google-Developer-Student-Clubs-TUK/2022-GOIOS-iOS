//
//  SignUpView.swift
//  GOiOS
//
//  Created by /Chynmn/M1 pro—̳͟͞͞♡ on 2022/12/01.
//
import UIKit
import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var showingAlert = false
    @State var uiTabarController: UITabBarController?


    @State private var sign_id : String = ""
    @State private var sign_pw : String = ""
    @State private var sign_pw_check : String = ""
    
    var btnBack : some View { Button(action: {
            self.showingAlert = true
        }){
            Text("뒤로가기")
        }.alert(isPresented: $showingAlert){
            Alert(title: Text("회원 가입 취소"), message: Text("회원가입을 취소하시겠습니까?"),
                  primaryButton: .destructive(Text("취소하기"), action: {
                presentationMode.wrappedValue.dismiss()
            })
                  , secondaryButton: .cancel(Text("이어하기")))
        }
            
    }
    
    var body: some View {
        VStack {
            
            Text("Create Your ID")
                .font(.largeTitle)
                .bold()
            Text("One ID is all you need to access all services.")
                .padding()

            
            VStack {
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    
                    TextField("Please enter your ID", text: $sign_id)
                        .disableAutocorrection(true)
                }
                .padding()
                .background(Capsule().fill(.tertiary))
                .padding()
                
                VStack {
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.secondary)
                        SecureField("Please enter your PW", text: $sign_pw)
                    }
                    .padding()
                    .background(Capsule().fill(.tertiary))
                    .padding()
                    
                    Text("Your PassWord is [ \(sign_pw) ]")
                }
            }
            
            Button (action: {
                
            }) {
                Text("Sign Up")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 45)
            .background(Capsule().fill(.black))
            .shadow(radius: 5)
            .padding()
            

        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
