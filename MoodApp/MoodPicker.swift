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
            VStack {
                Text("Select a Mood")
                LazyVGrid(columns:Array(repeating: GridItem(), count:3)) {
                    ForEach(mood.allCases) {

                            }
                    }
                }
            }
        }
    }
}

#Preview {
    MoodPicker(mood: .happy)
}
