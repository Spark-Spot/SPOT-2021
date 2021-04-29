//
//  Favorites.swift
//  spottest
//
//  Created by Preksha Munot on 3/29/21.
//
import Foundation
import SwiftUI
import Combine

struct Favorites: View {
    @ObservedObject var fetcher = FavoriteFetcher()
    @State var isPressed = false
    var body: some View {
        VStack(alignment: .leading){
            Text("My Favorites").font(.custom("Cabin Bold", size: 30)).fontWeight(.bold).padding(.leading, 15)
            List(fetcher.favorites) { fave in
                VStack{
                    ZStack{
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 400, height: 179)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10000000149011612)), radius:4, x:0, y:4)
                        HStack{
                            Image(systemName: "heart.fill")
                                .font(.system(size: 40)).foregroundColor(.red)
                            .padding(.trailing,5)
                            .padding(.bottom)
                            VStack(alignment: .leading){
                                Text(fave.name).font(.title3).fontWeight(.bold)
                            Text(fave.address)
                                .font(.custom("Cabin Regular", size: 16))
                            }.padding(.trailing,150)
                }
            }.navigationTitle("My Favorites")
        }
    }
}
}
}

public class FavoriteFetcher: ObservableObject {

    @Published var favorites = [Favorite]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://raw.githubusercontent.com/prekshamunot/SPOT-2021/main/test2.json")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Favorite].self, from: d)
                    DispatchQueue.main.async {
                        self.favorites = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
         
    }
}

struct Favorite: Codable, Identifiable {
    public var id: String
    public var name: String
    public var address: String
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case name = "name"
           case address = "address"
        }
}
    

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
