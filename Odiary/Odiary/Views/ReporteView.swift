//
//  ReporteView.swift
//  Odiary
//
//  Created by Yolis on 14/09/24.
//

import SwiftUI

struct ReporteView: View {
    let reports = [
        "You've written about your musical tastes, mentioning artists like Beyoncé and how much you enjoy dancing.",
        "You mentioned how much you like socializing at parties, and how you enjoy kissing people close to you.",
        "You've commented on your desire to fully enjoy the party and how you like to keep the energy up.",
        "You shared how your favorite songs are always present in your moments of fun.",
        "You described how much you enjoy spontaneity and how, even when parties end, you continue to enjoy the moment."
    ]
    
    var body: some View {
        
        VStack{
            VStack (alignment: .leading){
                HStack{Spacer()}
                Text("This week...")
                    .font(.largeTitle)
                    .bold()
                VStack{
                    Text("18/12/23 - 25/12/23")
                }
                HStack{
                    Spacer()
                    ZStack {
                        VStack(alignment: .leading){
                            Text("In general..")
                                .font(.title2)
                                .bold()
                                .fontWeight(.semibold)
                            Text("This week, you've been writing about your likings and how well things have been going at work.")
                                .font(.body)
                        }
                    }
                    .padding()
                    .background(Color(red: 129/255, green: 194/255, blue: 139/255))
                    .cornerRadius(20)
                    Spacer()
                }
                .padding()
                
                
            }.padding(.bottom, 1)
            .padding(.leading, 15)
            .padding(.trailing, 10)
            ScrollView (.vertical){
                        VStack(spacing: 20) {
                            ForEach(Array(reportes.enumerated()), id: \.offset) { index, reporte in
                                HStack {
                                    if index % 2 == 0 {
                                        Spacer()
                                        reporteItem(reporte: reporte)
                                            .frame(maxWidth: UIScreen.main.bounds.width * 0.75, alignment: .trailing) // Limitar a 75% del ancho
                                        
                                    } else {
                                        reporteItem(reporte: reporte) // Alinear a la izquierda si es impar
                                            .frame(maxWidth: UIScreen.main.bounds.width * 0.75, alignment: .leading) // Limitar a 75% del ancho
                                        Spacer()
                                        
                                    }
                                }
                            }
                        }
                        .padding()
            }.scrollIndicators(.hidden)
        }.background(Color(red: 205/255, green: 229/255, blue: 199/255))
    }
    
    func reporteItem(reporte: String) -> some View {
            VStack{
                Text(reporte)
                    .font(.body)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
            .shadow(color: Color.black.opacity(0.3), radius: 1, x: -5, y: 5)
        }
}


#Preview {
    ReporteView()
}
