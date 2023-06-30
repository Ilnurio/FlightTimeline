//
//  ContentView.swift
//  FlightTimeline
//
//  Created by Ilnur on 21.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // это бар нижний
        TabView {
            HomeScreenView()
            // модификатор для настройки внешнего вида tabBar
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Home")
                }
            UserProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
