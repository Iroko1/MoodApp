//
//  MoodPicker.swift
//  MoodApp
//
//  Created by DOWNING, AYDEN T. on 4/21/25.
//  Created by VOLKMAR, RANDALL S. on 4/21/25.
//  Created by DOWNING, AYDEN T. on 4/21/25.
//

import SwiftUI

struct MoodPicker: View {
    @Binding var mood: Mood

    var body: some View {
        ZStack {
            VStack {
                ForEach(Mood.allCases, id: \.self) { moodOption in
                    Button(action: {
                        mood = moodOption
                    }) {
                        VStack {
                            Text(moodOption.emoji)
                            Text(moodOption.rawValue.capitalized)
                        }
                        .frame(width: 270, height: 100)
                        .background(mood == moodOption ? Color.green : moodOption.bgColor)
                        .cornerRadius(20)
                        .padding(10)
                        .foregroundColor(.white)
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
    MoodPicker(mood: $Mood)
}
