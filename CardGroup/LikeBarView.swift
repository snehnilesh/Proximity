//
//  LikeBarView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI

struct LikeBarView: View {
	var Index: Int
	@State var Liked = false
	@Environment(\.colorScheme) var colorScheme
	var Namespace: Namespace.ID
    var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 18)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-24-32, height: 72)
				.background(.ultraThinMaterial)
				.clipShape(RoundedRectangle(cornerRadius: 18))
			
			HStack {
				VStack{
					HStack {
						Text("@snehnilesh")
							.font(.system(size: 20, design: .rounded))
							.bold()
						Spacer()
					}
					HStack {
						Text("London, UK")
							.font(.system(size: 14, design: .rounded))
							.bold()
							.opacity(0.75)
						Spacer()
					}
				}
				
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
				
				Image(systemName: "paperplane")
					.font(.system(size: 22, design: .rounded))
					.foregroundColor(Color.primary)
			}
			.padding(.horizontal, 52)
		}
		.padding(.bottom, 30)
    }
}

struct DetailLikeBarView: View {
	var Index: Int
	@State var Liked = false
	@Binding var BringUpDetail: Bool
	@Environment(\.colorScheme) var colorScheme
	var Namespace: Namespace.ID
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 18)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-24, height: 72)
				.background(.ultraThinMaterial)
				.clipShape(RoundedRectangle(cornerRadius: 18))
				.padding(.horizontal, BringUpDetail ? 0 : -32)

			HStack {
				VStack{
					HStack {
						Text("@snehnilesh")
							.font(.system(size: 20, design: .rounded))
							.bold()
						Spacer()
					}
					HStack {
						Text("London, UK")
							.font(.system(size: 14, design: .rounded))
							.bold()
							.opacity(0.75)
						Spacer()
					}
				}
				
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
			.padding(.horizontal, BringUpDetail ? 32 : 52)
		}
		.padding(.bottom, 16)
	}
}
