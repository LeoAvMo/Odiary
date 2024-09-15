//
//  Entry.swift
//  Odiary
//
//  Created by Yolis on 14/09/24.
//

import Foundation

struct Entry: Identifiable, Hashable {
    let id: UUID
    let title: String
    let subtitle: String
    let imageURL: URL
    
    init(title:String, subtitle: String, imageURL: URL){
        self.id = UUID()
        self.title = title
        self.subtitle = subtitle
        self.imageURL = imageURL
    }
}

struct EntryData {
    static let getAllEntries: [Entry] = [
        .init(title: "Imagen1", subtitle: "Descripción", imageURL: URL(string: "https://pixabay.com/photos/road-mountains-glacier-nature-8284023/")!),
        .init(title: "Imagen2", subtitle: "Descripción", imageURL: URL(string: "https://pixabay.com/photos/music-hip-hop-night-concer-singer-7974197/")!),
        .init(title: "Imagen3", subtitle: "Descripción", imageURL: URL(string: "https://pixabay.com/photos/bird-ornithology-duck-species-8319973/")!),
        .init(title: "Imagen4", subtitle: "Descripción", imageURL: URL(string: "https://pixabay.com/photos/ferris-wheel-theme-park-7698475/")!),
        .init(title: "Imagen5", subtitle: "Descripción", imageURL: URL(string: "https://pixabay.com/photos/cat-animal-mammal-feline-pet-8275147/")!)
    ]
}
