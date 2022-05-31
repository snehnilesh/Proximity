//
//  LikeBarView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI

struct LikeBarView: View {
	@State var Liked = false
	@Environment(\.colorScheme) var colorScheme
    var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 18)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-24-32, height: 72)
				.background(.ultraThinMaterial)
				.clipShape(RoundedRectangle(cornerRadius: 18))
			
			HStack {
				LikeBarLeftButtons()
				LikeBarRightButtons(Liked: $Liked)
			}
			.padding(.horizontal, 52)
		}
		.padding(.bottom, 30)
    }
}

struct DetailLikeBarView: View {
	@State var Liked = false
	@Binding var BringUpDetail: Bool
	@Environment(\.colorScheme) var colorScheme
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 18)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-24, height: 72)
				.background(.ultraThinMaterial)
				.clipShape(RoundedRectangle(cornerRadius: 18))
				.padding(.horizontal, BringUpDetail ? 0 : -32)

			HStack {
				LikeBarLeftButtons()
				LikeBarRightButtons(Liked: $Liked)
			}
			.padding(.horizontal, BringUpDetail ? 32 : 52)
		}
		.padding(.bottom, 16)
	}
}
