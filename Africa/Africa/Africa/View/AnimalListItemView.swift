//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Muhammed Ibrahim on 19/02/2021.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 16, content: {
            Image(animal.image)
                .resizable().scaledToFill().frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8, content: {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            })
            
        })
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1]).previewLayout(.sizeThatFits)
            .padding()
    }
}
