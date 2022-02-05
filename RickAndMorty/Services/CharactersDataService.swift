//
//  DataService.swift
//  RickAndMorty
//
//  Created by Ali Eren on 4.02.2022.
//


import Foundation
import Combine

class CharactersDataService {
    
    @Published var allCharacters : [Result] = []
    
    var coinSubscription : AnyCancellable?
    init(){
        getCharacters()
    }
 
   
    private func getCharacters(){
        guard let url = URL(string:"https://rickandmortyapi.com/api/character")
        else {return}
        
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: Welcome7.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self](returnedCoins) in
                self?.allCharacters = returnedCoins.results
                self?.coinSubscription?.cancel()
            })
    }
}
