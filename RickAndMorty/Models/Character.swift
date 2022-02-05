//
//  Character.swift
//  RickAndMorty
//
//  Created by Ali Eren on 4.02.2022.
//

import Foundation



// MARK: - Welcome7
struct Welcome7 : Codable {
    let info: Info
    let results: [Result]
}

// MARK: - Info
struct Info: Codable {
    let count, pages: Int
    let next: String
    let prev: String?
}

// MARK: - Result
struct Result:Codable,Identifiable {
    let id: Int
    let name, status, species, type: String
    let gender: String
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

// MARK: - Location
struct Location:Codable {
    let name: String
    let url: String
}
