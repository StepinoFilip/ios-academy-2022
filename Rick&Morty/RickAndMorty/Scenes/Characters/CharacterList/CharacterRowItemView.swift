//
//  CharacterRowItemView.swift
//  RickAndMorty
//
//  Created by Filip Štěpánek on 16.08.2022.
//  Copyright © 2022 STRV. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct CharacterRowItemView: View {
    let character: Character
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            WebImage(url: character.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 110,
                       height: 110
                )
            
            VStack(alignment: .leading, spacing: 4) {
                Text(character.name)
                    .font(.appItemLargeTitle)
                    .foregroundColor(.appTextItemTitle)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                Text("\(character.species) • \(character.gender)")
                    .font(.appItemDescription)
                    .foregroundColor(.appTextBody)

            }
            .padding(.vertical, 16)
        }
    }
}

struct CharacterRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRowItemView(character: .mock)
        }
    }

