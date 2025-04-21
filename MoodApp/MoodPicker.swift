//
//  MoodPicker.swift
//  MoodApp
//
//  Created by VOLKMAR, RANDALL S. on 4/21/25.
//

import SwiftUI

struct MoodPicker: View {
    
    let mood: Mood
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                ForEach(Mood.allCases, id:\.self) { mood in
                    VStack {
                        Text(mood.emoji)
                        Text(mood.rawValue)
                    }
                    .frame(width: 300, height: 100)
                    .background(mood.bgColor)
                }
                .cornerRadius(30)
                
            }
            
        }
        
    }
    
}

#Preview {
    MoodPicker(mood:.angry)
}
