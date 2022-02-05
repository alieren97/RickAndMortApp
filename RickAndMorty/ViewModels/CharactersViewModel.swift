//
//  CharactersViewModel.swift
//  RickAndMorty
//
//  Created by Ali Eren on 4.02.2022.
//

import Foundation
import Alamofire
import Combine


class CharactersViewModel :ObservableObject {
    
  
    @Published var allCharacters : [Result] = []
     
     
     private let dataService = CharactersDataService()
     private var cancellabels = Set<AnyCancellable>()
     
     init(){
         addSubscribers()
         
     }
     
     func addSubscribers(){
         print("print")
         dataService.$allCharacters
             .sink { returnedCoins in
                 self.allCharacters = returnedCoins
             }
             .store(in: &cancellabels)
     }
    
}
