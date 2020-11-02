//
//  SectionModel.swift
//  rental_app
//
//  Created by juan on 9/9/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

//struct Service: Hashable, Codable {
//    var id = UUID()
//    var image: String
//    var name: String
//}

struct SectionModel: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var image: String
    var price: String
    var description: String
}

struct SectionModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
