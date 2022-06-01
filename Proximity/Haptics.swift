//
//  Haptics.swift
//  HomeScreenSpaces
//
//  Created by Aurther Nadeem on 1/10/20.
//

/// Importing UIKit to use that framework within this file.
import UIKit

class Haptics {
    
    static let shared = Haptics()
    
    func playSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(.success)
    }
    
    func playError() {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(.error)
    }
    
    func playLightImpact() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred()
    }
    
    func playMediumImpact() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
    
    func playHeavyImpact() {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        generator.impactOccurred()
    }
    
    func playSelectionImpact() {
        let generator = UISelectionFeedbackGenerator()
        generator.prepare()
        generator.selectionChanged()

    }
    
    private init() {
        
    }
}
