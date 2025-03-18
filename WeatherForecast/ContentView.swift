//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Aditya Sarraf on 21/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Sunday Dec 22")
        HStack{
            Text("Chakia,Bihar")
                
            Image(systemName: "location.fill")
                
        }.bold()

          
            HStack {
                ScrollView(.horizontal){
                    HStack{
                        DayForecast(day: "Mon", isRainy: true, high: 45, low: 36)
                        DayForecast(day: "Tue", isRainy: false, high:40, low: 34)
                        DayForecast(day: "Wed", isRainy: true, high:48, low: 26)
                        DayForecast(day: "Thurs", isRainy: false, high:42, low: 32)
                        DayForecast(day: "Fri", isRainy: true, high:47, low: 31)
                        DayForecast(day: "Sat", isRainy: false, high:46, low: 34)
                        DayForecast(day: "Sun", isRainy: true, high:49, low: 37)
                    }
                }
            }
        
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    var iconName: String{
        if isRainy{
            return "cloud.rain.fill"
        }
        else{
            return "sun.max.fill"
        }
        
    }
    var iconColor: Color{
        if isRainy{
            return Color.blue
        }
        else{
            return Color.yellow
        }
    }
    var body: some View {
        
        VStack {
            
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High : \(high)°")
                .fontWeight(Font.Weight.semibold)
            Text("Low : \(low)°")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
            
            
                .padding()
        }
    }
}
