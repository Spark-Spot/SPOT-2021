//
//  ListUIView.swift
//  spottest
//
//  Created by Preksha Munot on 3/14/21.
//

import SwiftUI

struct ListUIView: View {
    @ObservedObject var fetchers = InformationFetcher()
    @State var text = ""
    @State var rating: Int
    @State private var isEditing = false
    @State var isPressedMugar = false
    var body: some View {
        VStack{
                   HStack{
                   TextField("", text:$text)
                       .padding(7)
                       .padding(.horizontal, 25)
                       .background(Color(.white))
                       .cornerRadius(8)
                       .padding(.leading, 10)
                       .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                       .overlay(
                           HStack {
                               Image(systemName: "magnifyingglass")
                                   .foregroundColor(.gray)
                                   .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                   .padding(.leading, 15)
                               if isEditing {
                                    Button(action: {
                                        self.text = ""
                                    }) {
                                        Image(systemName: "multiply.circle.fill")
                                            .foregroundColor(.gray)
                                            .padding(.trailing, 8)
                                    }
                                }
                           })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "ellipsis.circle")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .padding(.trailing, 15)
                    })
                }.padding(.bottom, 5)
            List(fetchers.info) { inf in
                VStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: 11)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        VStack{
                            Image("Mugar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 318, height: 184)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(
                                    ZStack {
                                        Image(systemName: "heart.fill")
                                        .opacity(isPressedMugar ? 1 : 0)
                                        .scaleEffect(isPressedMugar ? 1.0 : 0.1)
                                        .animation(.linear)
                                        Image(systemName: "heart")
                                           }.font(.system(size: 40))
                                    . padding(.leading, 240)
                                    .padding(.bottom, 100)
                                        .onTapGesture {
                                        self.isPressedMugar.toggle()
                                           }.foregroundColor(isPressedMugar ? Color(#colorLiteral(red: 0.772549033164978, green: 0.0941176488995552, blue: 0.13725490868091583, alpha: 1)) : .white)
                                        
                                ).frame(width: 318, height: 184)
                        HStack{
                            VStack(alignment:.leading,spacing:5){
                                Text(inf.building_name).font(.custom("Cabin Bold", size: 30)).fontWeight(.bold)
                                    .padding(.top,10)
                                Text(inf.building_desc).font(.custom("Cabin Regular", size: 14))
                                Text("Empty Spots: \(inf.density_cnt) / \(inf.capacity)").font(.custom("Cabin Regular", size: 14))
                                Text("1.3 miles away").font(.custom("Cabin Regular", size: 14))
                                HStack{
                                    Text("Rating: \(self.rating)").font(.custom("Cabin Regular", size: 14))
                                    Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(Color.yellow)
                                    Image(systemName: "star.fill").font(.system(size: 15)).foregroundColor(Color.yellow)
                                }
                            }
                                ZStack{
                                  Circle()
                                    .trim(from: 0.05, to: 1)
                                    .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.772549033164978, green: 0.0941176488995552, blue: 0.13725490868091583, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading),style: StrokeStyle(lineWidth: 8, lineCap: .round))
                                    .frame(width: 90, height: 90)
                                    .rotationEffect(Angle(degrees: 90))
                                    .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)).opacity(0.3), radius: 3, x: 0, y: 3)
                                    .padding(.leading, 20)
                                    .padding(.top, 20)
                                    Text("\(inf.percent) %")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .padding(.top, 20)
                                    .padding(.leading,20)
                                }
                        }.padding(.bottom, 10)
                        }
                    }.compositingGroup()
                    .frame(width: 349, height: 383)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                }
            }
        }
    }
}

public class InformationFetcher: ObservableObject {

    @Published var info = [Information]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://raw.githubusercontent.com/prekshamunot/SPOT-2021/main/test2.json")!
    
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Information].self, from: d)
                    DispatchQueue.main.async {
                        self.info = decodedLists
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

struct Information: Codable, Identifiable {
    public var id: String
    public var building_desc: String
    public var building_name: String
    public var density_cnt: String
    public var capacity: String
    public var dc_ratio: String
    public var percent: String
    public var remaning_ratio: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case building_desc = "building_desc"
        case building_name = "building_name"
        case density_cnt = "density_cnt"
        case capacity = "capacity"
        case dc_ratio = "dc_ratio"
        case percent = "percent"
        case remaning_ratio = "remaning_ratio"
    }
}

struct ListUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListUIView(text: "", rating: 4)
    }
}
