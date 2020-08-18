//
//  RedView.swift
//  TrafficSheets
//
//  Created by Manoli on 18/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct RedView: View {
    
    @State var yellowIsPresent = false
    
    var body: some View {
        ZStack {
            Color(.systemRed)
                .edgesIgnoringSafeArea(.all)
            Button(action: { self.yellowIsPresent = true }) {
                Text("Button")
            }
        }.sheet(isPresented: $yellowIsPresent) {
            YellowView()
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
