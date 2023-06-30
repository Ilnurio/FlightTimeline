//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Ilnur on 21.06.2023.
//

import SwiftUI

struct FlightBoardView: View {
    let boardName: String
    let flightInfo: [FlightInformation]
    
    var body: some View {
                List(flightInfo, id: \.self) { flight in
                    Text("\(flight.airline), \(flight.number)")
            }
                .listStyle(.plain)
        .navigationTitle(boardName)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Flight Board", flightInfo: FlightInformation.generateFlights())
    }
}
