//
//  HomeScreenView.swift
//  FlightTimeline
//
//  Created by Ilnur on 21.06.2023.
//

import SwiftUI

struct HomeScreenView: View {
//    private let flightInfo = FlightInformation.generateFlight()
    
    var body: some View {
        ZStack {
            Image(systemName: "airplane")
                .resizable()
                .frame(width: 250, height: 250)
                .opacity(0.1)
                .rotationEffect(.degrees(-90))
            
            VStack {
                NavigationLink("Arrivals") {
                    FlightBoardView(boardName: "Arrivals")
                }
                NavigationLink("Departures") {
                    FlightBoardView(boardName: "Departures")
                }
                NavigationLink("Flight Timeline") {
                    TimelineView("FlightTimeline")
                }
            }
        }
       
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
