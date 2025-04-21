//
//  ContentView.swift
//  MoodApp
//
//  Created by ROTSEVENKOV, MATVEY V. on 4/21/25.
//

import SwiftUI

import Foundation
import SwiftUI
 
struct Dashboard: View {
    
    @State private var Mood = ""
    
    var body: some View {
        TabView {
            NavigationStack {
                VStack {
                    Text("Today's Mood")
                        .font(.title)
                        .padding(.top)
                    
                    Text(mood.happy)
                        .font(.system(size:80))
                    
                    Text(Mood.message)
                        .font(.headline)
                        .padding()
                    
                    NavigationLink("Pick Your Mood", destination: MoodPickerView(mood: $moodSelected))
                        .padding()
                }
                navigationTitle("Dashboard")
            }
            .tabItem{
                Label("Dashboard",systemImage: "face.smiling")
            }
            
            
            NavigationStack{
//                AboutView()
            }
            .tabItem {
                Label("About",systemImage: "info.circle")
            }
        }
        
    }
}
 
#Preview {
    Dashboard(moodSelected: Mood.happy)
}
