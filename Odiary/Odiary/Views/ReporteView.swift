//
//  ReporteView.swift
//  Odiary
//
//  Created by Yolis on 14/09/24.
//

import SwiftUI

struct ReporteView: View {
    let reportes = ["1800-hot-n-fun oh my god dj play my fav song, play something by beyonce", "I like to dance when i party, i like to kiss everbody, where the heck is saki", "im trynna break it done yo baby turn up the party", "1800-hot-n-fun thats my number hit my line, hear my ringtone everytime", "im not tryna leave until the kick us to the road, but even if they do its cool i got an addresss in my phone"] // Ejemplo de lista
    
    var body: some View {
        
        VStack{
            VStack (alignment: .leading){
                HStack{Spacer()}
                Text("Esta semana...")
                    .font(.largeTitle)
                    .bold()
                VStack{
                    Text("18/12/23 - 25/12/23")
                }
                HStack{
                    Spacer()
                    ZStack {
                        VStack{
                            Text("En general..")
                                .font(.title)
                                .fontWeight(.semibold)
                            Text("Este es un resumen general de los reportes.")
                                .font(.body)
                        }
                    }
                    .padding()
                    .background(Color(red: 129/255, green: 194/255, blue: 139/255))
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.3), radius: 1, x: -5, y: 5)
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
