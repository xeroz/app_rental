//
//  DetailView.swift
//  rental_app
//
//  Created by juan on 4/26/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack{
            Image("img_rental")
                .resizable()
                .frame(height: 540)
            
            HStack{
                VStack{
                    HStack{
                        Text("$ 20")
                            .font(.system(size: 20, weight:.bold))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)

                        Text("Studio Apartment")
                            .font(.system(size: 12))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)

                        Spacer()
                    }
                    .padding(.leading)

                    HStack{
                        Text("23 Cross, HRBR layout, bangalore")
                            .font(.system(size: 12))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .padding(.leading)
                }

                Image("shared")
                    .renderingMode(.original)
                    .frame(width: 30.0, height: 30.0)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    .padding(.trailing)
            }
            .frame(width: 400, height: 200)
            .offset(y: 160)
        
            Color.white
                .frame(width: 380, height: 1, alignment: .leading)
                .offset(y: 200)
                .padding()
                
            
            HStack{
                Image("bed_white")
                Text("3 bed")
                    .foregroundColor(Color.white)
                Spacer()
                
                Image("bath_white")
                Text("2 Bath")
                    .foregroundColor(Color.white)
                Spacer()
                
                Image("car_white")
                Text("2 Parking")
                    .foregroundColor(Color.white)
            }
            .padding()
            .frame(width: 400, height: 50)
            .offset(y: 230)
        }
        .offset(y: -190)
        .frame(height: 300)
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
