//
//  AboutView.swift
//  MoodApp
//
//  Created by VOLKMAR, RANDALL S. on 4/21/25.
//  Created by HUGHES, DARIAN M. on 4/21/25.
//

import SwiftUI

struct AboutView: View {
    @EnvironmentObject var moodModel: MoodModel

    var body: some View {
        TabView {
            NavigationStack {
                VStack {
                    Text("Today's Mood")
                        .font(.title)
                        .padding(.top)

                    Text(moodModel.selectedMood.emoji)
                        .font(.system(size: 80))

                    Text(moodModel.selectedMood.message)
                        .font(.headline)
                        .padding()

                    NavigationLink("Pick Your Mood", destination: MoodPicker())
                        .padding()
                }
                .navigationTitle("Dashboard")
            }
            .tabItem {
                Label("Dashboard", systemImage: "face.smiling")
            }

            NavigationStack {
                AboutView()
            }
            .tabItem {
                Label("About", systemImage: "info.circle")
            }
        }
    }
}


#Preview {
    Dashboard()
        .environmentObject(MoodModel())
}
