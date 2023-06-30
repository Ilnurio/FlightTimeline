//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Ilnur on 21.06.2023.
//

import SwiftUI

struct FlightBoardView: View {
    let boardName: String
    
    var body: some View {
        Text(boardName)
            .font(.title)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Flight Board")
    }
}
