//
//  JournalView.swift
//  Odiary
//
//  Created by Yolis on 14/09/24.
//

import SwiftUI

struct JournalView: View {
    
    var body: some View {
        VStack (spacing: 15){
            Text("Journal Entries")
                .font(.title)
                .fontWeight(.black)
            GeometryReader(content: { geometry in
                let size=geometry.size
                ScrollView(.horizontal){
                    
                    HStack(spacing: 5){
                        ForEach(EntryData.getAllEntries){
                            entry in
                            GeometryReader(content: {
                                geometryContent in
                                AsyncImage(url: entry.imageURL){
                                    image in
                                    image.image?.resizable()
                                }
                                .clipShape(.rect(cornerRadius: 15))
                                .overlay{
                                    TitleAndSubtitleView(entry)
                                }
                                
                            })
                            .frame(width: size.width - 60)
                            .scrollTransition(transition: .interactive, axis: .horizontal){
                                view, phase in
                                view.scaleEffect(phase.isIdentity ? 1 : 0.95)
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                        .scrollTargetLayout()
                }
                .scrollTargetBehavior(.viewAigned)
                .scrollIndicators(.hidden)
            })
            
        }
        .frame(height: 500)
        .padding(.horizontal, 15)
    }
    @ViewBuilder
    func TitleAndSubtitleView(_ city: City) -> some View {
        ZStack(alignment: .bottomLeading, content: {
            LinearGradient(colors: [
                .clear,
                .clear,
                .clear,
                .clear,
                .black.opacity(0.1),
                .black.opacity(0.5),
                .black
            ], startPoint: .top, endPoint: .bottom)
            VStack(alignment: .leading, spacing: 4, content: {
                Text(entry.title)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.white.opacity(0.8))
                Text(entry.subtitle)
                    .font(.callout)
                    .foregroundStyle(.white.opacity(0.8))
            })
            .padding(20)
        })
        .clipShape(.rect(cornerRadius:15))
    }

}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        return JournalView()
    }
}
