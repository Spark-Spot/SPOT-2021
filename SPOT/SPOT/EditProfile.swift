//
//  EditProfile.swift
//  SPOT
//
//  Created by Yuanming Chai on 4/21/21.
//

import SwiftUI

struct EditProfile: View {
//    @State var name: String
//    @State var email: String
//    @State var navigationBarBackButtonHidden = true
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                Text("Edit Profile").font(.largeTitle).fontWeight(.bold).padding(.leading, 30).padding(.bottom,30)
                HStack{
                    Spacer()
                    Image("Mugar")
                        .resizable()
                        .frame(width: 78, height: 77)
                        .clipShape(RoundedRectangle(cornerRadius: 218))
                        .frame(width: 78, height: 77)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    Spacer()
                }
                Text("Change Profile Photo").foregroundColor(.black)
                    .background(Color.white)
                    .padding(.leading, 125).padding(.top, 10)
                    .cornerRadius(5)
                ZStack(){
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 371, height: 62)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:5, x:0, y:5)
                    TextField("Email", text: .constant(""))
                        .frame(width: 360, height: 60)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                }.padding(.bottom, 10).padding(.trailing, 30).padding(.leading, 30)
                ZStack(){
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 371, height: 62)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.15000000596046448)), radius:5, x:0, y:5)
                    TextField("Password", text: .constant(""))
                        .frame(width: 360, height: 60)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:5, x:0, y:5)
                }.padding(.bottom, 50).padding(.trailing, 30).padding(.leading, 30)
                HStack{
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        VStack (alignment: .center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil, content: {
                            Button("Save Changes"){
                                
                            }
                            .padding(.leading, 20).padding(.trailing, 20).padding(.top, 5).padding(.bottom, 5)
                            .foregroundColor(.white)
                            .background(Color(#colorLiteral(red: 0.800000011920929, green: 0, blue: 0, alpha: 1)))
                            .cornerRadius(10)
                            .font(.custom("Cabin Bold", size: 20))
                        })
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}
