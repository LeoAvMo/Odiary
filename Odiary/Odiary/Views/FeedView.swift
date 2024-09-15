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
        ("Practica la gratitud", "Agradece diariamente por lo que tienes."),
        ("Haz ejercicio regularmente", "Mejora el ánimo y reduce el estrés."),
        ("Medita o respira profundamente", "Ayuda a reducir la ansiedad y mejora el enfoque."),
        ("Mantén una rutina", "La estructura diaria puede generar estabilidad emocional."),
        ("Duerme lo suficiente", "Prioriza un buen descanso para restaurar el cuerpo y la mente.")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{Spacer()}
            Text("Me gustaría recomendarte...")
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

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
