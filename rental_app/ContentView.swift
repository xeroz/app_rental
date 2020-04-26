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
                            VStack{
                                Image(item.image)
                                HStack{
                                    Text(item.price)
                                        .font(.system(size: 20, weight:.bold))
                                        .fontWeight(.medium)
                                    Text(item.title)
                                        .font(.system(size: 12))
                                        .fontWeight(.medium)
                                    Spacer()
                                }
                                .padding(.leading)
                                HStack{
                                    Text(item.description)
                                        .font(.system(size: 12))
                                        .fontWeight(.medium)
                                    Spacer()
                                }
                                .padding(.leading)
                                HStack{
                                    Image(item.img_1)
                                    Text(item.service_name_1)
                                        .font(.system(size: 12))
                                        .fontWeight(.medium)
                                    Image(item.img_2)
                                    Text(item.service_name_2)
                                        .font(.system(size: 12))
                                        .fontWeight(.medium)
                                    Image(item.img_3)
                                    Text(item.service_name_3)
                                        .font(.system(size: 12))
                                        .fontWeight(.medium)
                                    Spacer()
                                }
                                .padding()
                            }
                            .background(Color.white)
                            .frame(width: 333, height: 286)
                            .cornerRadius(30)
                            .overlay(
                                Image("shared")
                                    .renderingMode(.original)
                                    .frame(width: 30.0, height: 30.0)
                                    .background(Color.white)
                                    .clipShape(Circle())
                                    .offset(x: 130, y: 30)
                                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                            )
                        }
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

