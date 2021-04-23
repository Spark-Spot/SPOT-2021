//
//  EditView.swift
//  SPOT
//
//  Created by Tilak Agarwal on 4/23/21.
//

import SwiftUI

struct EditView: View {
    var body: some View {
        NavigationView{
            VStack(){
                Text("Edit Profile")
                    .font(.custom("Cabin Bold", size: 30))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 40)
                    .padding(.top, -40)
                    
                Image("Mugar")
                    .resizable()
                    .frame(width: 96, height: 95)
                    .clipShape(RoundedRectangle(cornerRadius: 218))
                    .frame(width: 96, height: 95)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                    .padding(.bottom, 15)
                Text("Change Profile Photo")
                    .font(.custom("Cabin Regular", size: 18))
                    .padding(.bottom, 40)
                
                HStack(){
                    Text("Name ")
                        .font(.custom("Cabin Regular", size: 18))
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 300, height: 50)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:5, x:0, y:5)
                        TextField(" Rhett", text: .constant(""))
                            .frame(width: 300, height: 50)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                    }
                }.padding(.bottom, 20)
                
                HStack(){
                    Text("Email ")
                        .font(.custom("Cabin Regular", size: 18))
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .frame(width: 300, height: 50)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:5, x:0, y:5)
                        TextField(" rhett@bu.edu", text: .constant(""))
                            .frame(width: 300, height: 50)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                    }
                }.padding(.bottom, 20)
                
                Spacer()
                Spacer()
                Spacer()
                
                NavigationLink(destination: Settings()){
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 0.800000011920929, green: 0, blue: 0, alpha: 1)))
                            .frame(width: 130, height: 50)
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                        
                        Text("Save Changes")
                            .font(.custom("Cabin Regular", size: 14))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .textCase(.uppercase)
                    }
                }
                Spacer()
            }
        }
        
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView()
    }
}
