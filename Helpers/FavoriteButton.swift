//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Giovanni Almeida Soares on 23/08/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: (isSet ? "heart.fill" : "heart"))
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .red : .black)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
