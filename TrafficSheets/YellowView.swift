//
//  YellowView.swift
//  TrafficSheets
//
//  Created by Manoli on 18/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct YellowView: View {
    
    @EnvironmentObject var sheetState: SheetState
    
    var body: some View {
        ZStack {
            Color(.systemYellow)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {
                    self.sheetState.greenIsPresented = true
                }) {
                    Text("Button")
                }
            }
        }.sheet(isPresented: $sheetState.greenIsPresented) {
            GreenView().environmentObject(self.sheetState)
        }
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        YellowView().environmentObject(SheetState())
    }
}
