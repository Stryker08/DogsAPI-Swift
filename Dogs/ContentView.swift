//
//  ContentView.swift
//  Dogs
//
//  Created by Student on 2/24/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          AsyncImage(url: URL(string: "https://images.dog.ceo/breeds/komondor/n02105505_2489.jpg")){img in
                if let error = img.error{
                    Text("We Have An Error")
              Text("\(error.localizedDescription)")
            }
            if let image = img.image {
              image
                .resizable()
                .frame(width: 200, height: 200)
            }
            }
                
            Text("Frank")
            .bold()
            .font(Font.largeTitle)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

#Preview {
    ContentView()
}
