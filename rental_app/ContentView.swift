//
//  ContentView.swift
//  rental_app
//
//  Created by juan on 4/16/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var username: String = ""
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9764705882, green: 0.9843137255, blue: 0.9882352941, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            NavigationView {
            VStack{
                HStack{
                    HStack{
                        TextField("  Search Properties, Area etc", text: $username)
                            .frame(width: 330, height: 40)
                            .background(Color.white)
                            .cornerRadius(50)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        print("ssss")
                    }) {
                        Image("options")
                            .renderingMode(.original)
                            .frame(width: 40.0, height: 40.0)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                    ScrollView{
                        VStack(spacing: -10){
                            ForEach(sectionData){ item in
                                NavigationLink(destination: DetailView()) {
                                    RowAparmentView(item: item)
                                }
                            }
                            .navigationBarHidden(true)
                        }
                        .padding(.top, 10)
                    }
            }
            
            HStack{
                Image("home")
                    .padding()
                    
                Spacer()
                Image("label")
                    .padding()
                
                Spacer()
                Image("chat")
                    .padding()
                
                Spacer()
                Image("settings")
                    .padding()
                
            }
            .frame(width: 350, height: 64)
            .background(Color(#colorLiteral(red: 0.9921568627, green: 0.9764705882, blue: 0.9607843137, alpha: 0.75)))
            .cornerRadius(10)
            .offset(x: 0, y: 370)
            .opacity(20.0)
            
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Section: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var price: String
    var description: String
    var img_1: String
    var service_name_1: String
    var img_2: String
    var service_name_2: String
    var img_3: String
    var service_name_3: String
}

let sectionData = [
    Section(
        title: "Studio Apartment",
        image: "image_local_1",
        price: "$ 20",
        description: "23 Cross, HRBR layout, bangalore",
        img_1: "bed",
        service_name_1: "3 Bed",
        img_2: "bath",
        service_name_2: "2 Bath",
        img_3: "parking",
        service_name_3: "2 Parking"
    ),
    Section(
        title: "Studio Apartment",
        image: "image_local_2",
        price: "$ 20",
        description: "23 Cross, HRBR layout, bangalore",
        img_1: "bed",
        service_name_1: "3 Bed",
        img_2: "bath",
        service_name_2: "2 Bath",
        img_3: "parking",
        service_name_3: "2 Parking"
    ),
    Section(
        title: "Studio Apartment",
        image: "image_local_1",
        price: "$ 20",
        description: "23 Cross, HRBR layout, bangalore",
        img_1: "bed",
        service_name_1: "3 Bed",
        img_2: "bath",
        service_name_2: "2 Bath",
        img_3: "parking",
        service_name_3: "2 Parking"
    ),
    Section(
        title: "Studio Apartment",
        image: "image_local_2",
        price: "$ 20",
        description: "23 Cross, HRBR layout, bangalore",
        img_1: "bed",
        service_name_1: "3 Bed",
        img_2: "bath",
        service_name_2: "2 Bath",
        img_3: "parking",
        service_name_3: "2 Parking"
    ),
]
