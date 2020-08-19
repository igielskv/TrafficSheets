//
//  GreenView.swift
//  TrafficSheets
//
//  Created by Manoli on 18/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct GreenView: View {
    
    @Binding var yellowIsPresent: Bool
    @Binding var greenIsPresent: Bool
    
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                self.yellowIsPresent = false
                self.greenIsPresent = false
            }) {
                Text("Dismiss")
            }
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView(yellowIsPresent: .constant(true), greenIsPresent: .constant(true))
    }
}
