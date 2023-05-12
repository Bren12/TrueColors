//
//  Virus.swift
//  lgbt
//
//  Created by Brenda Saucedo on 11/05/23.
//

import SwiftUI

struct Virus: Identifiable {
    let id = UUID()
    let name: String
    let status: Bool
    let date: String
    let color1: Color
    let color2: Color
    let image: String
}

extension Virus {
    static let ets: [Virus] = [
        Virus(name: "VIH", status: false, date: "03/05/2023", color1: Colors.cardRedDark, color2: Colors.cardRedLight, image: "VIH"),
        Virus(name: "Papiloma\nHumano", status: false, date: "03/05/2023", color1: Colors.cardPurpleDark, color2: Colors.cardPurpleLight, image: "VPH")
    ]
}
