//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Giovanni Almeida Soares on 21/08/22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            //Image
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            //Place name
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
