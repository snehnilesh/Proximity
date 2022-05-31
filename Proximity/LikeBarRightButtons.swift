//
//  LikeBarRightButtons.swift
//  Proximity
//
//  Created by Sneh Nilesh on 31/05/2022.
//

import SwiftUI

struct LikeBarRightButtons: View {
	@Binding var Liked: Bool
	@Environment(\.colorScheme) var colorScheme
    var body: some View {
		HStack(alignment: .center) {
			Button {
				Liked.toggle()
				Haptics.shared.playSuccess()
			} label: {
				if Liked == true {
					ZStack {
						if colorScheme == .light {
						Image(systemName: "heart.fill")
							.font(.system(size: 24, design: .rounded))
							.foregroundColor(Color.red)
						Image(systemName: "heart")
							.font(.system(size: 24, design: .rounded))
							.foregroundColor(Color.primary)
						} else {
							Image(systemName: "heart.fill")
								.font(.system(size: 24, design: .rounded))
								.foregroundColor(Color.red)
						}
					}
				  } else {
					Image(systemName: "heart")
						.font(.system(size: 24, design: .rounded))
						.foregroundColor(Color.primary)
				  }
			}
			.animation(.none)
			
			Image(systemName: "paperplane")
				.font(.system(size: 22, design: .rounded))
				.foregroundColor(Color.primary)
		}
    }
}
