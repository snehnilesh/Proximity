//
//  HomeView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 21/05/2022.
//

import SwiftUI
import Introspect

struct HomeView: View {
	@Binding var PostCardTapped: Bool
	@State var BringUpDetail = false
	@State var PostCardMoveUp = false
	@State var Index: Int = 0
	@State var SelectedIndex: Int = 0
    var body: some View {
		ZStack {
			ZStack {
				ScrollView(showsIndicators: false) {
					StoriesView()
						.padding(.top, 68)
						.opacity(PostCardTapped ? 0 : 100)
						.offset(x: 0, y: PostCardTapped ? -120 : 0)
						.animation(.interactiveSpring(response: 0.4, dampingFraction: 0.8, blendDuration: 0.8))
					VStack {
						ForEach(0..<10) { Index in
							CardView(PostCardTapped: $PostCardTapped, PostCardMoveUp: $PostCardMoveUp, BringUpDetail: $BringUpDetail, Index: $Index, SelectedIndex: $SelectedIndex)
						}
					}
					.padding(.bottom, 70)
				}
				.introspectScrollView { scrollView in
					scrollView.bounces = false
				}
				.padding(.top, -12)
				
				VStack {
					HomeTitleBarView
					Spacer()
				}
				.opacity(PostCardTapped ? 0 : 100)
				.offset(x: 0, y: PostCardTapped ? -120 : 0)
				.animation(.interactiveSpring(response: 0.4, dampingFraction: 0.84, blendDuration: 0.8))
			}
			if BringUpDetail {
				DetailView(PostCardTapped: $PostCardTapped, PostCardMoveUp: $PostCardMoveUp, BringUpDetail: $BringUpDetail, SelectedIndex: $SelectedIndex)
				.edgesIgnoringSafeArea(.all)
			}
		}
	}

	private var HomeTitleBarView: some View {
		VStack {
			HStack {
				Text("Home")
					.font(.system(size: 30, weight: .bold, design: .rounded))
					.padding(.leading)
					.padding(.vertical, 12)
				Spacer()
			}
		}
		.background(Color.BackgroundColor)
	}
}
