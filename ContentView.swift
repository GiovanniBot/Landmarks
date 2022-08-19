//
//  ContentView.swift
//  Landmarks
//
//  Created by Giovanni Almeida Soares on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Map
            MapView()
                .frame(height:300)
                .ignoresSafeArea(edges: .top)
            //CircleImage
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            //Descriptions
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}