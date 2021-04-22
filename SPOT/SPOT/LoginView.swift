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
                    TextField("Email", text: .constant(""))
                        .frame(width: 360, height: 60)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                    TextField("Password", text: .constant(""))
                        .frame(width: 360, height: 60)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Button("Login"){
                            
                        }
                            .font(.custom("Cabin Bold", size: 20))
                        .padding(.leading, 20).padding(.trailing, 20)
                        .padding(.top, 5).padding(.bottom, 5)
                            .foregroundColor(.white)
                            .background(Color(#colorLiteral(red: 0.800000011920929, green: 0, blue: 0, alpha: 1)))
                            .cornerRadius(10)
                    }.navigationBarBackButtonHidden(true)
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
