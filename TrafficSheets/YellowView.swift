//
//  YellowView.swift
//  TrafficSheets
//
//  Created by Manoli on 18/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct YellowView: View {
    
    @State var greenIsPresent = false
    
    var body: some View {
        ZStack {
            Color(.systemYellow)
                .edgesIgnoringSafeArea(.all)
            Button(action: { self.greenIsPresent = true }) {
                Text("Button")
            }
        }.sheet(isPresented: $greenIsPresent) {
            GreenView()
        }
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView()
    }
}
