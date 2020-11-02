//
//  RowAparmentView.swift
//  rental_app
//
//  Created by juan on 11/1/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct RowAparmentView: View {
    
    var item: Section
    
    var body: some View {
        VStack{
            Image(item.image)
            HStack{
                Text(item.price)
                    .font(.system(size: 20, weight:.bold))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                Text(item.title)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
            HStack{
                Text(item.description)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
            HStack{
                Image(item.img_1)
                Text(item.service_name_1)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                Image(item.img_2)
                Text(item.service_name_2)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                Image(item.img_3)
                Text(item.service_name_3)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
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

struct RowAparmentView_Previews: PreviewProvider {
    static var previews: some View {
        RowAparmentView(item: sectionData[0])
    }
}
