//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Ilnur on 21.06.2023.
//

import SwiftUI

struct FlightBoardView: View {
    @State private var hiddenCanceled = false
    
    let boardName: String
    let flightInfo: [FlightInformation]
    
    private var shownFlights: [FlightInformation] {
        hiddenCanceled
            ? flightInfo.filter { $0.status != .cancelled }
            : flightInfo
    }
    
    var body: some View {
                List(shownFlights, id: \.self) { flight in
                    FlightRowView(flight: flight)
            }
                .listStyle(.plain)
        .navigationTitle(boardName)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Toggle("Hide canceled", isOn: $hiddenCanceled)
   //                 .toggleStyle(.switch)
            }
        }
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Flight Board", flightInfo: FlightInformation.generateFlights())
    }
}
