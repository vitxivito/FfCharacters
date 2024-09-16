//
//  GameCharacter.swift
//  FfCharacters
//
//  Created by Vitoria Garcia on 16/9/24.
//

import Foundation
struct GameCharacter {
    let id, name: String
    let age, gender, race, job: String
    let height, weight, origin, description: String
    let pictures: [Picture]
}
enum Gender: String, Codable, Identifiable, CaseIterable {
    var id: Self { self }
    
    case any = "All"
    case female = "Female"
    case male = "Male"
    case androgynous = "Androgynous"
    case empty = "??"
    
}

// MARK: - Picture
struct Picture {
    let id: String
    let url: String
    let primary: Int
    let collectionID: String
}

enum Origin: String, Codable, Identifiable, CaseIterable {
    var id: Self { self }
    
    case any = "All"
    case finalFantasy = "Final Fantasy"
    case finalFantasyBE = "Final Fantasy BE"
    case finalFantasyII = "Final Fantasy II"
    case finalFantasyIII = "Final Fantasy III"
    case finalFantasyIV = "Final Fantasy IV"
    case finalFantasyIX = "Final Fantasy IX"
    case finalFantasyV = "Final Fantasy V"
    case finalFantasyVI = "Final Fantasy VI"
    case finalFantasyVII = "Final Fantasy VII"
    case finalFantasyVIII = "Final Fantasy VIII"
    case finalFantasyX = "Final Fantasy X"
    case finalFantasyX2 = "Final Fantasy X-2"
    case finalFantasyXII = "Final Fantasy XII"
    case finalFantasyXIII = "Final Fantasy XIII"
    case finalFantasyXIII2 = "Final Fantasy XIII-2"
    case finalFantasyXV = "Final Fantasy XV"
}
