//
//  WritterView.swift
//  Odiary
//
//  Created by Leo A.Molina on 14/09/24.
//

import SwiftUI

struct WritterView: View {
    @State var myDay = ""
    var body: some View {
        VStack(alignment: .leading){
            Divider()
            TextField("Hoy me siento..", text: $myDay, axis: .vertical)
        }
        .padding()
    }
}

#Preview {
    WritterView()
}
