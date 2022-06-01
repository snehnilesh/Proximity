//
//  MessageModule.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI

struct MessageModule: View {
	@State var Mute = false
    var body: some View {
		VStack {
			Spacer()
			HStack {
				Circle()
					.stroke(Color.ExploreCirclesColor, lineWidth: 0)
					.frame(width: 60, height: 60)
					.foregroundColor(Color.ExploreCirclesColor)
					//.background(Image(People[num]).resizable().scaledToFit())
					.background(.ultraThinMaterial)
					.clipShape(Circle())
					.padding(.trailing, 8)

				VStack{
					HStack {
						Text("@snehnilesh")
							.font(.system(size: 18, weight: .medium, design: .rounded))
						Spacer()
						Text("16:48")
							.font(.system(size: 14, weight: .medium, design: .rounded))
							.opacity(0.4)
					}
					HStack {
						Text("Hey")
							.font(.system(size: 14, weight: .medium, design: .rounded))
							.opacity(0.6)
						Spacer()
						Button {
							Mute.toggle()
							Haptics.shared.playMediumImpact()
						} label: {
							if Mute == true {
								Image(systemName: "speaker.slash.fill")
									.font(.system(size: 18 , design: .rounded))
									.foregroundColor(Color.orange)
							
							} else {
								Image(systemName: "speaker.slash")
									.font(.system(size: 18 , design: .rounded))
									.foregroundColor(Color.primary)
									.opacity(0.2)
							}
						}
						.animation(.none)
					}
				}
			}
			.padding(.horizontal, 18)
			.padding(.vertical, 4)

		}
	//	.padding(.bottom, 70)
		.padding(.top, -6)
    }
}

struct MessageModule_Previews: PreviewProvider {
    static var previews: some View {
        MessageModule()
    }
}
