//
//  LoginView.swift
//  SPOT
//
//  Created by Tilak Agarwal on 3/14/21.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
            NavigationView {
                VStack{
                    Spacer()
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 371, height: 62)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:5, x:0, y:5)
                        TextField("Email", text: .constant(""))
                            .frame(width: 360, height: 60)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                    }.padding(.bottom, 50)
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 371, height: 62)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:5, x:0, y:5)
                        TextField("Password", text: .constant(""))
                            .frame(width: 360, height: 60)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                    }.padding(.bottom, 50)
                    
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                                Text("Login")
                                    .font(.custom("Cabin Bold", size: 24))
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(#colorLiteral(red: 0.800000011920929, green: 0, blue: 0, alpha: 1)))
                                    .cornerRadius(15)
                    }.frame(width: 250, height: 60).navigationBarBackButtonHidden(true)
                    Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
