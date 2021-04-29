//
//  MyFavorites.swift
//  SPOT
//
//  Created by Preksha Munot on 4/26/21.
//

import Foundation
import SwiftUI

class MakeFavorite: ObservableObject{
    private var favelocations: Set<String>
    
    init(){
        self.favelocations = []
    }
    func contains(_ favelocation: Information) -> Bool {
        favelocations.contains(favelocation.building_name)
    }
    func add(_ favelocation: Information){
        objectWillChange.send()
        favelocations.insert(favelocation.building_name)
        print(favelocation)
        save()
    }
    func remove(_ favelocation: Information){
        objectWillChange.send()
        favelocations.remove(favelocation.building_name)
        save()
    }
    func save(){
        
    }
}
