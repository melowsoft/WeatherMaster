//
//  WelcomeView.swift
//  WeatherMaster
//
//  Created by Tony on 14/01/2022.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManger
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share the weather to get the weather location in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
