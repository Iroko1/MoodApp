//
//  MoodPicker.swift
//  MoodApp
//
//  Created by VOLKMAR, RANDALL S. on 4/21/25.
//

import SwiftUI

struct MoodPicker: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var moodModel: MoodModel

    var body: some View {
        VStack(spacing: 5) {
            ForEach(Mood.allCases) { mood in
                Button(action: {
                    moodModel.selectedMood = mood
                    dismiss()
                }) {
                    VStack {
                        Text(mood.emoji)
                            .font(.largeTitle)
                        Text(mood.rawValue)
                            .font(.headline)
                    }
                    .frame(width: 300, height: 100)
                    .background(mood.bgColor)
                    .cornerRadius(30)
                    .foregroundColor(.black)
                }
            }
        }
        .navigationTitle("Pick Your Mood")
    }
}


#Preview {
    MoodPicker()
}
