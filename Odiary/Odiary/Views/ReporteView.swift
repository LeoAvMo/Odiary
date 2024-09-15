//
//  ReporteView.swift
//  Odiary
//
//  Created by Yolis on 14/09/24.
//

import SwiftUI

struct ReporteView: View {
    let reportes = [
            "Has escrito sobre tus gustos musicales, mencionando a artistas como Beyoncé y cómo disfrutas bailar.",
            "Mencionaste lo mucho que te gusta socializar en fiestas, y cómo disfrutas besar a las personas cercanas a ti.",
            "Has comentado sobre tu deseo de disfrutar la fiesta al máximo y cómo te gusta animar el ambiente.",
            "Compartiste cómo las canciones que más te gustan están siempre presentes en tus momentos de diversión.",
            "Describiste lo mucho que te gusta la espontaneidad y cómo incluso cuando las fiestas terminan, sigues disfrutando el momento."
        ]
    
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
                        VStack(alignment: .leading){
                            Text("En general..")
                                .font(.title2)
                                .bold()
                                .fontWeight(.semibold)
                            Text("Esta semana has estado escribiendo sobre tus gustos y cómo te ha ido bien en el trabajo.")
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
