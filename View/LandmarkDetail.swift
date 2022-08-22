//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Giovanni Almeida Soares on 22/08/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            //Map at top
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height:300)
                .ignoresSafeArea(edges: .top)
            
            //Middle CircleImage
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            //Name and descriptions
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[3])
    }
}
