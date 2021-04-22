import SwiftUI

struct About: View {
//    @State var name: String
//    @State var email: String
//    @State var navigationBarBackButtonHidden = true
    var body: some View {
        VStack (alignment: .leading){
            Text("About US").padding().padding(.leading,150).font(.custom("Cabin Bold", size: 20))
            Divider()
            Text("Terms of Use").padding(5).padding(.leading,10)
            Divider()
            Text("Privacy Policy").padding(5).padding(.leading,10)
            Divider()
            Text("Boston Univeristy Crendential").font(.custom("Cabin Bold", size: 12))
                .padding(20).padding(.leading,110)
            Spacer()
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
