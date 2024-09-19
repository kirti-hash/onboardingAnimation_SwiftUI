//
//  ContentView.swift
//  login3dliveDemo
//
//  Created by MRT102 on 17/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = "Tim"
    @State private var email: String = "Tim"
    @State private var isHidden: Bool = true
    
    var body: some View {
        NavigationView(content: {
         
       
        ZStack {
            Color.purple
                .ignoresSafeArea()
            
            VStack {
               Spacer()
                    .frame(height: 200)
               
                    ZStack{
                       
                        Color.white
                            .clipShape(
                            .rect(
                                topLeadingRadius: 20,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 20
                                ))
                            .ignoresSafeArea()
                        VStack {
     
                                Text("Welcome")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color.purple)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    
                            Text("It is quick and easy to Login. Enter your email and password below.")
                                .fontWeight(.medium)
                                .font(.subheadline)
                                .foregroundStyle(Color.gray)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top, 2)
                                
                            
                            
                            VStack{
                                Text("Email")
                                    .foregroundStyle(Color.gray)
                                    .fontWeight(.regular)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                HStack{
                                    
                                    Image("email")
                                        .resizable()
                                        .frame(width: 20,height: 20)
                                        .padding(6)
                                
                                        TextField("Enter Email", text: $email )
                                            .frame(height: 48)
                                 
                                }
                               
                                .border(.gray, width: 1, cornerRadius: 8)
                            }
                            .padding(.top, 30)
                           
                            VStack{
                                Text("Password")
                                    .foregroundStyle(Color.gray)
                                    .fontWeight(.regular)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                HStack{
                                    Image("password")
                                        .resizable()
                                        .frame(width: 20,height: 20)
                                        .padding(6)
                                    if isHidden {
                                        SecureField("Enter Password", text: $name )
                                            .frame(height: 48)
                                    }else {
                                        TextField("Enter Password", text: $name )
                                            .frame(height: 48)
                                    }
                                    Button(action: {
                                        isHidden.toggle()
                                    }, label: {
                                        Image( isHidden ? "closeEye" : "openEye")
                                            .resizable()
                                            .frame(width: 20,height: 20)
                                            .padding(10)
                                    })
                                    
                                    
                                    
                                    
                                    
                                }
                                
                                .border(.gray, width: 1, cornerRadius: 8)
                               
                            }
                            .padding(.top, 20)
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                               Text("Forgot password ?")
                                    .foregroundStyle(Color.purple)
                                    .fontWeight(.regular)
                                    .font(.subheadline)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            })
                            
                            
                            NavigationLink(destination: AnimatedView()) {
                                Text("Sign In")
                                    .frame(width: 320, height: 48)
                                    .background(Color.purple)
                                    .cornerRadius(25)
                                    .foregroundColor(.white)
                                    .padding(.top, 100)
                            }
                    
                        }
                      // .background(Color.blue)
                        .ignoresSafeArea()
                        .padding(.top,50)
                        .padding(.horizontal, 20)
    
               }
            }
        }
        })
    }
}

#Preview {
    ContentView()
}
