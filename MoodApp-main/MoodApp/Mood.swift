//
//  Mood.swift
//  MoodApp
//
//  Created by VOLKMAR, RANDALL S. on 4/21/25.
//
import SwiftUI

enum Mood: String, CaseIterable, Identifiable {
    
    var id: String { self.rawValue }
    
    case happy = "Happy"
    case tired = "Tired"
    case anxious = "Anxious"
    case sad = "Sad"
    case angry = "Angry"
    case confused = "Confused"
    
    var bgColor: Color {
        switch self {
        case .happy: return .yellow
        case .tired: return .gray
        case .anxious: return .orange
        case .sad: return .blue
        case .angry: return .red
        case .confused: return .green
        }
    }
    
    var emoji: String {
        switch self {
        case .happy:
            return "😊"
        case .tired:
            return "😴"
        case .anxious:
            return "😰"
        case .sad:
            return "😭"
        case .angry:
            return "😡"
        case .confused:
            return "😕"
        }
    }
    
    var message: String {
        switch self {
        case .happy:
            return "You are feeling happy!"
        case .tired:
            return "You are feeling tired."
        case .anxious:
            return "You are feeling anxious."
        case .sad:
            return "You are feeling sad."
        case .angry:
            return "You are feeling angry."
        case .confused:
            return "You are feeling confused."
        }
    }
    
    
    
    var about: String {
           switch self {
           case .happy:
               return "Happiness is a positive emotion that often comes from doing things you love or being around people you care about."
           case .tired:
               return "Feeling tired can be a signal that your body or mind needs rest. Take it easy and prioritize self-care."
           case .anxious:
               return "Anxiety is a common emotion when you're facing something uncertain. Deep breathing and grounding exercises can help."
           case .sad:
               return "Sadness is a natural part of life. It's okay to feel down sometimes — expressing your feelings can help."
           case .angry:
               return "Anger can arise when things feel unfair or frustrating. Find healthy ways to release it, like talking or exercising."
           case .confused:
               return "Confusion often means you're learning or experiencing something new. Take your time — clarity will come."
           }
       }
    
}

class MoodModel: ObservableObject {
    @Published var selectedMood: Mood = .happy
}
