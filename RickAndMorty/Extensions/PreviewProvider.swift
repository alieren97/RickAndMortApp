//
//  PreviewProvider.swift
//  RickAndMorty
//
//  Created by Ali Eren on 4.02.2022.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev : DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview{
    static let instance = DeveloperPreview()
    private init(){
        
    }
    let homeVM = CharactersViewModel()
 
}

