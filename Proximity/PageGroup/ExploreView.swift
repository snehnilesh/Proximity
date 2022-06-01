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
        
//            ProximityAccountCircle()
//                .padding(.bottom, 520)
//                .padding(.leading, 20)
//
//            ProximityAccountCircle()
//                .padding(.bottom, 175)
//                .padding(.trailing, 275)
//
//            ProximityAccountCircle()
//                .padding(.bottom, 250)
//                .padding(.leading, 220)
//
//            ProximityAccountCircle()
//                .padding(.top, 360)
//                .padding(.trailing, 50)

            VStack {
                Text("Proximity")
                    .font(.system(size: 30 , design: .rounded))
                    .bold()
                    .foregroundColor(Color.ProximityTitle)
                Text("Connect with people nearby")
                    .font(.system(size: 20 , design: .rounded))
                    .bold()
                    .foregroundColor(Color.ProximitySubtitle)
            }
			SafeAreaView()
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

struct ProximityAccountCircle: View {
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(Color.ProximitySubtitle)
                .shadow(color: Color.ExploreCirclesColor, radius: 5, x: 0, y: 0)
                .frame(width: 75, height: 75)
            Text("Sneh Nilesh")
                .foregroundColor(Color.ProximitySubtitle)
                .font(.system(size: 12 , design: .rounded))
                .bold()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExploreView()
        }
    }
}
