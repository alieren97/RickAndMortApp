//
//  CharactersView.swift
//  RickAndMorty
//
//  Created by Ali Eren on 4.02.2022.
//

import SwiftUI

struct CharactersView: View {
    @EnvironmentObject private var vm : CharactersViewModel
    var body: some View {
        ScrollView{
            VStack{
                Text("Rick And Morty")
                    .foregroundColor(.white)
                ForEach(vm.allCharacters){character in
                    CharactersRowView(character: character)
                }
             
            }
        }
        .background(Color.black)
      
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
            .environmentObject(dev.homeVM)
    }
}
