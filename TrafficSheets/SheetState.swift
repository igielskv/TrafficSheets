//
//  SheetState.swift
//  TrafficSheets
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

class SheetState: ObservableObject {
    @Published var yellowIsPresented: Bool = false
    @Published var greenIsPresented: Bool = false
}
