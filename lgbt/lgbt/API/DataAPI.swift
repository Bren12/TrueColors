//
//  DataAPI.swift
//  Swifties
//
//  Created by Eunice Santos on 12/05/23.
//

import Foundation

enum pron : String {
    case Ella = "Femeninos (Ella)"
    case El = "Masculinos (El)"
    case Elle = "Neutros (Elle)"
}

enum animalType : String {
    case gato = "gato"
    case perro = "perro"
    case ave = "ave, loro, cotorro"
}

struct DataAPI {
    var key: String
}

struct chatInfo {
    var pronouns: pron
    var username: String
    var friendname: String
    var animal: animalType

}


let apiConfig = chatInfo(pronouns: .El, username: "Sam", friendname: "Olive", animal: .gato)

let api: DataAPI = DataAPI(key: "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")
