//
//  YellowView.swift
//  TrafficSheets
//
//  Created by Manoli on 18/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct YellowView: View {
    
    @State private var greenIsPresent = false
    
    @Binding var yellowIsPresent: Bool
    
    var body: some View {
        ZStack {
            Color(.systemYellow)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: { self.greenIsPresent = true }) {
                    Text("Button")
                }
            }
        }.sheet(isPresented: $greenIsPresent) {
            GreenView(yellowIsPresent: self.$yellowIsPresent, greenIsPresent: self.$greenIsPresent)
        }
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView(yellowIsPresent: .constant(true))
    }
}
