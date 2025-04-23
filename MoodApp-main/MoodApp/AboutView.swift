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
        VStack(spacing: 20) {
            Text("About Mood Picker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)

            Text(moodModel.selectedMood.emoji)
                .font(.system(size: 100))

            Text(moodModel.selectedMood.message)
                .font(.headline)

            Text(moodModel.selectedMood.about)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            Text("Made by: Matvey, Ayden, Randall , Gael, & Darian")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.bottom)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}


#Preview {
    AboutView()
        .environmentObject(MoodModel())
}
