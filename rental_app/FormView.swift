//
//  FormView.swift
//  rental_app
//
//  Created by juan on 4/19/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct FormView: View {
    @State var username: String = ""
    
    var body: some View {
        ZStack
            {
                Color.purple
                    .edgesIgnoringSafeArea(.all)

                // Your other content here
                // Other layers will respect the safe area edges
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
