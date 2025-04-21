//
//  MoodPicker.swift
//  MoodApp
//
//  Created by DOWNING, AYDEN T. on 4/21/25.
//

import SwiftUI

struct MoodPicker: View {
    let mood: Mood
    var body: some View {
        ZStack {
            ForEach(Mood.allCases, id:\.self) {
            mood in VStack {
                    Text(mood.rawValue)
                    Text(mood.emoji)
                }.frame(width: 270, height: 100)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding(10)
                    }
                }
            }
        }
    

#Preview {
    MoodPicker(mood: .happy)
}
