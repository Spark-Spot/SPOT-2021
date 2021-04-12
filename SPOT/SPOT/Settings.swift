//
//  Settings.swift
//  SPOT
//
//  Created by Tilak Agarwal on 3/28/21.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                    Text("My Settings").font(.custom("Cabin Bold", size: 30))
                    Spacer()
                    Image("Mugar")
                        .resizable()
                        .frame(width: 78, height: 77)
                        .clipShape(RoundedRectangle(cornerRadius: 218))
                    .frame(width: 78, height: 77)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    Spacer()
                }
                Spacer()
                NavigationLink(destination: LoginView()) {
                                Text("ACCOUNT")
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                                    
                }.padding()
                NavigationLink(destination: LoginView()) {
                                Text("Edit Profile")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding()
                NavigationLink(destination: LoginView()) {
                                Text("Logout")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                                    
                }.padding()
                Spacer()
                NavigationLink(destination: LoginView()) {
                                Text("SUPPORT")
                                    .foregroundColor(.red)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding()
                NavigationLink(destination: LoginView()) {
                                Text("About")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding()
                NavigationLink(destination: LoginView()) {
                                Text("Send Feedback")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding()
                Spacer()
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
