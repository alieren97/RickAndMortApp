//
//  CharactersRowView.swift
//  RickAndMorty
//
//  Created by Ali Eren on 4.02.2022.
//

import SwiftUI
import Kingfisher

struct CharactersRowView: View {
    let character : Result
    
    var body: some View {
        HStack{
            KFImage(URL(string:character.image))
                .resizable()
                .frame(width: UIScreen.main.bounds.width / 2, height:  UIScreen.main.bounds.width / 2)
            VStack{
                HStack{
                    Text(character.name)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                }
                
               
                HStack{
                    if character.status == "Alive"{
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.green)
                            .cornerRadius(10)
                        
                    }
                    else if character.status == "unknown"{
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.gray)
                            .cornerRadius(10)
                        
                    }
                    else{
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.red)
                            .cornerRadius(10)
                    }
                    Text("\(character.status) - \(character.species)")
                        .foregroundColor(.white)
                        .font(.system(size: 12, weight: .bold))
                    Spacer()
                }
                HStack{
                    VStack(alignment:.leading){
                        Text("Last known location:")
                            .foregroundColor(.gray)
                            .font(.system(size: 12, weight: .semibold))
                        Text(character.location.name)
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .bold))
                    }
                    Spacer()
                }
               
                HStack{
                    VStack(alignment:.leading){
                        Text("First seen in:")
                            .foregroundColor(.gray)
                            .font(.system(size: 12, weight: .semibold))
                        Text(character.origin.name)
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .bold))
                    }
                    
                    Spacer()
                }
                
            
                
                Spacer()
                
              
             
               
              
            }
            
        }.background(Color.black)
            .frame(width: UIScreen.main.bounds.width, height: 200)
      
    }
}
