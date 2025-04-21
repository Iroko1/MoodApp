//
//  AboutView.swift
//  MoodApp
//
//  Created by HUGHES, DARIAN M. on 4/21/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("About Mood Picker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            Text("😌")
                .font(.system(size: 100))
            Text("Mood Picker is a simple app that helps you track your mood throughout the day by allowing you to select from a list of moods. It's a simple, colorful way to stay aware of your emotional well-being.")
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            Text("Made with care by member 1, member 2, member 4, & Darian Hughes")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.bottom)
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
