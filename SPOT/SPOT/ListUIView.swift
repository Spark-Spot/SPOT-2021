//
//  ListUIView.swift
//  SPOT
//
//  Created by Preksha Munot on 3/14/21.
//

import SwiftUI

struct ListUIView: View {
    @State private var showingActionSheet = false
    @ObservedObject var fetchers = InformationFetcher()
    @State var text = ""
    @State private var isEditing = false
    @EnvironmentObject var makefavorites: MakeFavorite
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
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
                Image(systemName: "arrow.up.arrow.down")
                    .padding(.trailing, 10)
                    .onTapGesture {self.showingActionSheet = true}
                    .actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(title: Text("Sort and Filter"),
                                    message: Text("Sort by"),
                                    buttons: [
                                        .default(Text("Rating")){
                                            sortDensityRatio()
                                        },
                                        .default(Text("Density")) {
                                            sortDensityRatio()
                                        },
                                        .default(Text("Distance")) {
                                            sortDistance()
                                        },
                                        .cancel()
                                    ])
                    }
                Spacer()
            }.padding(.bottom, 5)
            List(fetchers.info) { inf in
                VStack{
                    CardView(info: inf)
                }
            }
        }
    }
    func sortDensityCount(){
        fetchers.info = fetchers.info.sorted{
            $0.density_cnt < $1.density_cnt
        }
    }
    func sortDensityRatio(){
        fetchers.info = fetchers.info.sorted{
            $0.percent < $1.percent
        }
    }
    func sortDistance(){
        fetchers.info = fetchers.info.sorted{
            $0.remaining_capacity < $1.remaining_capacity
        }
    }
}

struct CardView: View {
    
    @State var isPressedMugar = false
    
    var info: Information
    
    @State private var showDetail = false
    
    @EnvironmentObject var makefavorites: MakeFavorite
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 11)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            VStack{
                Image(info.building_name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 318, height: 184)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        ZStack {
                            Image(systemName: "heart.fill")
                                .opacity(makefavorites.contains(info) ? 1 : 0)
                                .scaleEffect(makefavorites.contains(info) ? 1.0 : 0.1)
                                .animation(.linear)
                            Image(systemName: "heart")
                        }.font(.system(size: 30))
                        .padding(.leading, 260)
                        .padding(.bottom, 120)
                        .onTapGesture {
                            if self.makefavorites.contains(self.info) {
                                self.makefavorites.remove(self.info)
                            } else {
                                self.makefavorites.add(self.info)
                            }
                        }.foregroundColor(makefavorites.contains(info) ? Color(#colorLiteral(red: 0.772549033164978, green: 0.0941176488995552, blue: 0.13725490868091583, alpha: 1)) : .white)
                        
                    ).frame(width: 318, height: 184)
                    .padding()
                HStack{
                    VStack(alignment:.leading,spacing:5){
                        Text(info.building_name).font(.custom("Cabin Bold", size: 30))
                            .padding(.top,10)
                        Text(info.building_desc).font(.custom("Cabin Regular", size: 14))
                        Text("Empty Spots: \(info.capacity - info.density_cnt) / \(info.capacity)").font(.custom("Cabin Regular", size: 14))
                        Text("1.3 miles away").font(.custom("Cabin Regular", size: 14))
                        HStack{
                            Text("Rating:").font(.custom("Cabin Regular", size: 14))
                            Image(systemName: "star.fill").font(.system(size: 15))
                            Image(systemName: "star.fill").font(.system(size: 15))
                            Image(systemName: "star.fill").font(.system(size: 15))
                        }
                    }
                    ZStack{
                        Circle()
                            .trim(from: CGFloat(info.remaning_ratio), to: 1)
                            .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.772549033164978, green: 0.0941176488995552, blue: 0.13725490868091583, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading),style: StrokeStyle(lineWidth: 8, lineCap: .round))
                            .frame(width: 90, height: 90)
                            .rotationEffect(Angle(degrees: 90))
                            .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)).opacity(0.3), radius: 3, x: 0, y: 3)
                            .padding(.leading, 20)
                            .padding(.top, 20)
                        Text("\(info.percent) %")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.top, 20)
                            .padding(.leading,20)
                        
                        
                    }
                }
                Button(action: {
                    self.showDetail.toggle()
                }) {
                    Image(systemName: "chevron.down")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 180 : 0))
                        .padding()
                        .animation(.easeInOut)
                }
                if showDetail{
                    VStack{
                        Divider()
                        HStack{
                            Text("1st Floor").font(.custom("Cabin Regular", size: 18))
                                .padding()
                            Spacer()
                            Text("9 Spots").font(.custom("Cabin Bold", size: 18))
                                .padding()
                        }
                        Divider()
                        HStack{
                            Text("2nd Floor").font(.custom("Cabin Regular", size: 18))
                                .padding()
                            Spacer()
                            Text("1 Spot").font(.custom("Cabin Bold", size: 18))
                                .padding()
                        }
                        Divider()
                        HStack{
                            Text("3rd Floor").font(.custom("Cabin Regular", size: 18))
                                .padding()
                            Spacer()
                            Text("0 Spots").font(.custom("Cabin Bold", size: 18))
                                .padding()
                        }
                        Divider()
                        HStack{
                            Text("4th Floor").font(.custom("Cabin Regular", size: 18))
                                .padding()
                            Spacer()
                            Text("18 Spots").font(.custom("Cabin Bold", size: 18))
                                .padding()
                        }
                    }.padding()
                }
            }//.padding()
        }
        .compositingGroup()
        //.frame(width: 350, height: 400)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
    }
}

public class InformationFetcher: ObservableObject {
    
    @Published var info = [Information]()
    
    init(){
        load()
    }
    
    func load() {
            let url = URL(string: "https://buspot.herokuapp.com/getbuildingsdensity")!
        
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
    public var density_cnt: Int
    public var capacity: Int
    public var remaining_capacity: Int
    public var dc_ratio: Double
    public var percent: Int
    public var remaning_ratio: Double
    public var floor_spots: spots
    
    enum CodingKeys: String, CodingKey {
        case id = "building_code"
        case building_desc = "building_desc"
        case building_name = "building_name"
        case density_cnt = "density_cnt"
        case capacity = "capacity"
        case remaining_capacity = "remaining_capacity"
        case dc_ratio = "dc_ratio"
        case percent = "percent"
        case remaning_ratio = "remaning_dc_ratio"
        case floor_spots = "floors_remaining_seats"
    }
}

struct spots: Codable {
    public var floors: Int
    enum CodingKeys: String, CodingKey{
        case floors = "1"
    }
}

struct ListUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListUIView()
    }
}
