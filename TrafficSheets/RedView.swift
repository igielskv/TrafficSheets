//
//  RedView.swift
//  TrafficSheets
//
//  Created by Manoli on 18/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct RedView: View {
    
    @EnvironmentObject var sheetState: SheetState
    
    var body: some View {
        ZStack {
            Color(.systemRed)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                self.sheetState.yellowIsPresented = true
            }) {
                Text("Button")
            }
        }.sheet(isPresented: $sheetState.yellowIsPresented) {
            YellowView().environmentObject(self.sheetState)
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView().environmentObject(SheetState())
    }
}
