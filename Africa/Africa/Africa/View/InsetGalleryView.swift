//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Muhammed Ibrahim on 20/02/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .center, spacing: 15, content: {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item).resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            })
        })
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits).padding()
    }
}
