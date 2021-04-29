//
//  Settings.swift
//  SPOT
//
//  Created by Tilak Agarwal on 3/28/21.
//

import SwiftUI

struct Settings: View {
    @State var navigationBarBackButtonHidden = true
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                HStack{
                    Text("My Settings").font(.largeTitle).fontWeight(.bold).padding(.leading, 40)
                    Spacer()
                    Image("Mugar")
                        .resizable()
                        .frame(width: 78, height: 77)
                        .clipShape(RoundedRectangle(cornerRadius: 218))
                    .frame(width: 78, height: 77)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    Spacer()
                }.padding(.bottom,45)
                VStack(alignment: .leading){
                NavigationLink(destination: LoginView()) {
                                Text("ACCOUNT")
                                    .foregroundColor(Color(#colorLiteral(red: 0.77, green: 0.09, blue: 0.14, alpha: 1)))
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                                    
                }.padding(5)
                Divider()
                NavigationLink(destination: EditProfile()) {
                                Text("Edit Profile")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding(5)
                Divider()
                NavigationLink(destination: LoginView()) {
                                Text("Logout")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                                    
                }.padding(5)
                Divider()
                }
                VStack(alignment: .leading){
                NavigationLink(destination: LoginView()) {
                                Text("SUPPORT")
                                    .foregroundColor(Color(#colorLiteral(red: 0.77, green: 0.09, blue: 0.14, alpha: 1)))
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding(5).padding(.top,30)
                Divider()
                NavigationLink(destination: About()) {
                                Text("About")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding(5)
                Divider()
                NavigationLink(destination: SendFeedback()) {
                                Text("Send Feedback")
                                    .foregroundColor(.black)
                                    .background(Color.white)
                                    .padding(.leading, 40)
                                    .cornerRadius(5)
                }.padding(5)
                    Divider()
                }.padding(.bottom,100)
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
