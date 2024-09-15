//
//  TabView.swift
//  Odiary
//
//  Created by Yolis on 14/09/24.
//

import SwiftUI

struct TabViews: View {
    private let selectedTintColor = Color(red: 10/255, green: 12/255, blue: 75/255)
    private let tabBarBackgroundColor = UIColor(.white)
    private let unselectedItemTintColor = UIColor(.white)
    var body: some View {
        VStack {
            TabView{
                JournalView()
                    .tabItem {
                        Label("Journal")
                    }
                ReporteView()
                    .tabItem {
                        Label("Reporte")
                    }
                FeedView()
                    .tabItem {
                        Label("Feed")
                    }
                MusicView()
                    .tabItem {
                        Label("Music")
                    }
                
            }
            .background()
            .tint(selectedTintColor)
            .onAppear {
                let appearance = UITabBar.appearance()
                appearance.barTintColor = tabBarBackgroundColor
                appearance.backgroundColor = tabBarBackgroundColor
                appearance.unselectedItemTintColor = unselectedItemTintColor
            }

        }
    }
}

#Preview {
    TabViews()
}
