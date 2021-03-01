//
//  InsertFactView.swift
//  Africa
//
//  Created by Muhammed Ibrahim on 20/02/2021.
//

import SwiftUI

struct InsertFactView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }.tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 140, idealHeight: 140, maxHeight: 180)
        }
    }
}

struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertFactView(animal: animals[0]).previewLayout(.sizeThatFits)
            .padding()
    }
}
