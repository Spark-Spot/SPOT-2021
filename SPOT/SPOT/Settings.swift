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
                HStack(){
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
                .padding(.bottom, 40)
                .padding(.top, -40)
                ZStack(alignment: .leading) {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.8549019694328308, green: 0.8549019694328308, blue: 0.8549019694328308, alpha: 1)), lineWidth: 1)
                    
                    NavigationLink(destination: LoginView()) {
                                    Text("ACCOUNT")
                                        .font(.custom("Cabin Regular", size: 16))
                                        .foregroundColor(Color(#colorLiteral(red: 0.77, green: 0.09, blue: 0.14, alpha: 1)))
                                        .background(Color.white)
                                        .padding(.leading, 40)
                                        .cornerRadius(5)
                                        
                    }
                }
                .frame(width: 420, height: 60)
                
                ZStack(alignment: .leading) {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.8549019694328308, green: 0.8549019694328308, blue: 0.8549019694328308, alpha: 1)), lineWidth: 1)
                    
                    NavigationLink(destination: LoginView()) {
                                    Text("Edit Profile")
                                        .font(.custom("Cabin Regular", size: 16))
                                        .foregroundColor(.black)
                                        .background(Color.white)
                                        .padding(.leading, 40)
                                        .cornerRadius(5)
                    }
                }
                .frame(width: 420, height: 60)
                .padding(.top, -10)
                
                ZStack(alignment: .leading) {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.8549019694328308, green: 0.8549019694328308, blue: 0.8549019694328308, alpha: 1)), lineWidth: 1)
                    
                    NavigationLink(destination: LoginView()) {
                                    Text("Logout")
                                        .font(.custom("Cabin Regular", size: 16))
                                        .foregroundColor(.black)
                                        .background(Color.white)
                                        .padding(.leading, 40)
                                        .cornerRadius(5)
                                        
                    }
                }
                .frame(width: 420, height: 60)
                .padding(.top, -10)
                
                Spacer()
                
                ZStack(alignment: .leading) {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.8549019694328308, green: 0.8549019694328308, blue: 0.8549019694328308, alpha: 1)), lineWidth: 1)
                    
                    NavigationLink(destination: LoginView()) {
                                    Text("SUPPORT")
                                        .font(.custom("Cabin Regular", size: 16))
                                        .foregroundColor(Color(#colorLiteral(red: 0.77, green: 0.09, blue: 0.14, alpha: 1)))
                                        .background(Color.white)
                                        .padding(.leading, 40)
                                        .cornerRadius(5)
                    }
                }
                .frame(width: 420, height: 60)
                .padding(.top, -80)
                
                ZStack(alignment: .leading) {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.8549019694328308, green: 0.8549019694328308, blue: 0.8549019694328308, alpha: 1)), lineWidth: 1)
                    
                    NavigationLink(destination: LoginView()) {
                                    Text("About")
                                        .font(.custom("Cabin Regular", size: 16))
                                        .foregroundColor(.black)
                                        .background(Color.white)
                                        .padding(.leading, 40)
                                        .cornerRadius(5)
                    }
                }
                .frame(width: 420, height: 60)
                .padding(.top, -30)
                
                ZStack(alignment: .leading) {
                    Rectangle()
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0.8549019694328308, green: 0.8549019694328308, blue: 0.8549019694328308, alpha: 1)), lineWidth: 1)
                    
                    NavigationLink(destination: LoginView()) {
                                    Text("Send Feedback")
                                        .font(.custom("Cabin Regular", size: 16))
                                        .foregroundColor(.black)
                                        .background(Color.white)
                                        .padding(.leading, 40)
                                        .cornerRadius(5)
                    }
                }
                .frame(width: 420, height: 60)
                .padding(.top, -10)
                
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
