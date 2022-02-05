//
//  RickAndMortyApp.swift
//  RickAndMorty
//
//  Created by Ali Eren on 4.02.2022.
//

import SwiftUI

@main
struct RickAndMortyApp: App {
    @StateObject private var vm = CharactersViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                CharactersView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
            
        }
    }
}
