//
//  FeedView.swift
//  Odiary
//
//  Created by Yolis on 15/09/24.
//

import SwiftUI

struct FeedView: View {
    @State private var expandedIndex: Int? = nil
    
    let items = [
        ("Practice gratitude", "Be grateful daily for what you have."),
        ("Exercise regularly", "Improve mood and reduce stress."),
        ("Meditate or breathe deeply", "Helps reduce anxiety and improve focus."),
        ("Keep a routine", "Daily structure can generate emotional stability."),
        ("Get enough sleep", "Prioritize a good rest to restore body and mind.")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{Spacer()}
            Text("I'd like to recommend you...")
                .font(.title)
                .bold()
            ForEach(items.indices, id: \.self) { index in
                ZStack(alignment: .topTrailing) {
                    VStack(alignment: .leading) {
                        Text(items[index].0)
                            .font(.headline)
                            .padding(.bottom, 2)
                        
                        if expandedIndex == index {
                            Text(items[index].1)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .padding(.trailing, 20)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                    
                    Button(action: {
                        withAnimation {
                            expandedIndex = expandedIndex == index ? nil : index
                        }
                    }) {
                        Image(systemName: expandedIndex == index ? "minus.circle.fill" : "plus.circle.fill")
                            .foregroundColor(.green)
                            .font(.title2)
                    }
                    .padding(.top, 5)
                    .padding(.trailing, 5)
                    
                }
                .padding(.bottom, 10)
            }
            Spacer()
        }
        .padding()
        .background(Color(red: 255/255, green: 253/255, blue: 246/255))
    }
}

#Preview {
    FeedView()
}
