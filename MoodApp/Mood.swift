//
//  Mood.swift
//  MoodApp
//
//  Created by VOLKMAR, RANDALL S. on 4/21/25.
//

enum Mood: String, CaseIterable {
    
    case happy = "Happy"
    case tired = "Tired"
    case anxious = "Anxious"
    case sad = "Sad"
    case angry = "Angry"
    case confused = "Confused"
    
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
    
    
}
