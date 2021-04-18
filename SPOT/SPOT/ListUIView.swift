//
//  ListUIView.swift
//  spottest
//
//  Created by Preksha Munot on 3/14/21.
//

import SwiftUI
import UIKit

protocol DataDelegate {
    func updateArray(newArray: Any)
}

struct ListUIView: View{
    @State var text: String
    @IBOutlet weak var ListUIView: UITableView!
    var notesArray = [Building]()

    var body: some View {
        ScrollView{
        VStack{
            TextField("search", text:$text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 356, height: 39)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)

            ZStack {
                RoundedRectangle(cornerRadius: 11)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                VStack{
                    Image("Mugar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 318, height: 184)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 318, height: 184)
                    Text("Mugar Library").font(.custom("Cabin Bold", size: 30)).multilineTextAlignment(.leading)
                    HStack{
                        VStack{
                    Text("123 Commonwealth Ave.").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("Empty Spots: 10/100").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("1.3 miles away").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Text("Rating:").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                        }
                        //90% full
                        Text("90% full").font(.custom("Cabin Bold", size: 14)).multilineTextAlignment(.trailing)
                        
                    }
                
                }
            }
            .compositingGroup()
            .frame(width: 349, height: 383)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            ZStack {
                RoundedRectangle(cornerRadius: 11)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                VStack{
                    Image("Yawkey")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 318, height: 184)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 318, height: 184)
                    Text("Yawkey Center").font(.custom("Cabin Bold", size: 30)).multilineTextAlignment(.leading)
                    HStack{
                        VStack{
                    Text("1 Bay State Rd").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("Empty Spots: 30/100").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("0.6 miles away").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Text("Rating:").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                        }
                        //90% full
                        Text("70% full").font(.custom("Cabin Bold", size: 14)).multilineTextAlignment(.trailing)
                        
                    }
                
                }
            }
            .compositingGroup()
            .frame(width: 349, height: 383)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            
            ZStack {
                RoundedRectangle(cornerRadius: 11)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                VStack{
                    Image("Mugar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 318, height: 184)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 318, height: 184)
                    Text("Stuvi 2").font(.custom("Cabin Bold", size: 30)).multilineTextAlignment(.leading)
                    HStack{
                        VStack{
                    Text("33 Harry Agganis Way").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("Empty Spots: 5/100").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("2.0 miles away").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Text("Rating:").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                        }
                        Text("95% full").font(.custom("Cabin Bold", size: 14)).multilineTextAlignment(.trailing)
                        
                    }
                
                }
            }
            .compositingGroup()
            .frame(width: 349, height: 383)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            
            ZStack {
                RoundedRectangle(cornerRadius: 11)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                VStack{
                    Image("Mugar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 318, height: 184)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: 318, height: 184)
                    Text("Questrom").font(.custom("Cabin Bold", size: 30)).multilineTextAlignment(.leading)
                    HStack{
                        VStack{
                    Text("595 Commonwealth Ave.").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("Empty Spots: 20/100").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                    Text("1.7 miles away").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    Text("Rating:").font(.custom("Cabin Regular", size: 14)).multilineTextAlignment(.leading)
                        }
                        Text("80% full").font(.custom("Cabin Bold", size: 14)).multilineTextAlignment(.trailing)
                        
                    }
                
                }
            }
            .compositingGroup()
            .frame(width: 349, height: 383)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
        }
        }
    }
    func viewDidLoad() {
        super.viewDidLoad()
        notesTableView.delegate = self
        notesTableView.dataSourse = self
        APIFunctions.functions.delegate = self
        APIFunctions.functions.fetchBuildingInfo("561")
        print(notesArray)

    }
}

struct ListUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListUIView(text: "")
    }
}

extension ListUIView_Previews: DataDelegate {
    func updateArray(newArray: String){
        do {
            notesArray = JSONDecoder().decode([Building].self, from: newArray.data(using: .utf8)!)
        } catch{
            print("Failed to decode")
        }
        self.notesTableView?.reloadData()
    }
}
