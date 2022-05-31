//
//  ExploreView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 21/05/2022.
//

import SwiftUI


extension Color {
    static let ExploreCirclesColor = Color("ExploreCirclesColor")
    static let ProximityTitle = Color("ProximityTitle")
    static let ProximitySubtitle = Color("ProximitySubtitle")
}

struct ExploreView: View {
    let ProximityCircles = [100, 200, 350, 550, 800, 1100, 1450]
    var body: some View {
        ZStack {
        }
        .background(
            ForEach(0..<7) { num in
                Circle()
                    .stroke(Color.ExploreCirclesColor, lineWidth: 1)
                    .frame(width: CGFloat(ProximityCircles[num]), height: CGFloat(ProximityCircles[num]))
            
            }
        )
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExploreView()
        }
    }
}
