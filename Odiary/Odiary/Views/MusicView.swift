//
//  MusicView.swift
//  Odiary
//
//  Created by Yolis on 15/09/24.
//

import SwiftUI

struct MusicView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
            }
            VStack{
                Text("Te recomeindo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    .padding(.top, 20)
            }
            Spacer()
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png")) { image in
                        image.resizable()
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(15)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 50, height: 50)
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Canción")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("Artista")
                        .font(.subheadline)
                }
                .padding(.horizontal)
                .padding(.top, 10)
            }
            VStack(alignment: .leading) {
                Text("Por...")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                
                Text("""
                    Commodo duis excepteur ut consequat commodo reprehenderit voluptate labore cupidatat occaecat eu dolore nulla qui veniam tempor ipsum culpa et consectetur et magna in pariatur duis ea eu qui esse veniam adipisicing voluptate
                    """)
                .font(.body)
                .foregroundColor(.black)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(25)
            .padding(.horizontal)
            .padding(.top, 20)
            
            Spacer()
            
        }
        .background(Color(red: 205/255, green: 229/255, blue: 199/255))
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
