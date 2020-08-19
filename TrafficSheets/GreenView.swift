//
//  GreenView.swift
//  TrafficSheets
//
//  Created by Manoli on 18/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct GreenView: View {
    
    @EnvironmentObject var sheetState: SheetState
    
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                self.sheetState.greenIsPresented = false
                self.sheetState.yellowIsPresented = false
            }) {
                Text("Dismiss")
            }
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView().environmentObject(SheetState())
    }
}
