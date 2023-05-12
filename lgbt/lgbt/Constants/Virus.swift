//
//  Virus.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

struct Virus: Identifiable {
    var id = UUID()
    var name: String
    var status: Bool
    var date: Date
    var color1: Color
    var color2: Color
    var image: String
}

extension Virus {
    static var ets: [Virus] = [
        Virus(name: "VIH", status: false, date: Date(), color1: Colors.cardRedDark, color2: Colors.cardRedLight, image: "VIH"),
        Virus(name: "Papiloma\nHumano", status: false, date: Date(), color1: Colors.cardPurpleDark, color2: Colors.cardPurpleLight, image: "VPH")
    ]
}
