//
//  DetailView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI
import Introspect

struct DetailView: View {
	@Binding var PostCardTapped: Bool
	@Binding var PostCardMoveUp: Bool
	@Binding var BringUpDetail: Bool
	var Index: Int
	@State var RevealBackground: CGFloat = 234
	@State var MaterialOpacity = 0.0
	@State var ScaleX: Double = 0.96
	@State var ScaleY: Double = 0.96
	@State var Radius: CGFloat = 28
	@State var Padding: CGFloat = -80
	var Namespace: Namespace.ID
    var body: some View {
		Color.clear
			.background(.ultraThinMaterial)
			.onAppear {
				if PostCardMoveUp {
					DispatchQueue.main.asyncAfter(deadline: .now()) {
						withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.8, blendDuration: 0.4)) {
							MaterialOpacity = 0.6
						}
					}
				}
			}
			.opacity(MaterialOpacity)
		ZStack {
			ScrollView(showsIndicators: false) {
				ZStack {
					DetailPostCardView(Index: Index, Namespace: Namespace)
						.simultaneousGesture(DragGesture(minimumDistance: 6)
								.onChanged { _ in
									PostCardTapped = true
									PostCardMoveUp = true
									
									withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.8, blendDuration: 0.8)) {
										MaterialOpacity = 0.0
									}
									DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
						
									}
								}
							.onEnded({ _ in
								DispatchQueue.main.asyncAfter(deadline: .now()) {
									withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.6)) {
										RevealBackground += 300//234
										ScaleY = 0.96
										Radius = 28
									}
									DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
											PostCardMoveUp = false
											PostCardTapped = false
											Padding += 80
											BringUpDetail = false
										Haptics.shared.playMediumImpact()
									}
									withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 1.0, blendDuration: 0.6)) {
										ScaleX = 0.96
									}
								}
							})
						)
					.padding(.top, Padding)
					
					VStack {
						Spacer()
						DetailLikeBarView(Index: Index, BringUpDetail: $BringUpDetail, Namespace: Namespace)
							.padding(.horizontal, PostCardTapped ? 16 : 0)
					}
				}
				.frame(width: UIScreen.ScreenWidth, height: ((UIScreen.ScreenWidth)*1.4))
				.padding(.bottom, 4)
			}
			
			.introspectScrollView { scrollView in
				scrollView.bounces = false
			}
			.background(
				Color.BackgroundColor
					.edgesIgnoringSafeArea(.all)
			)
			.clipShape(RoundedRectangle(cornerRadius: Radius))
			.onAppear {
				if PostCardMoveUp {
					DispatchQueue.main.asyncAfter(deadline: .now()) {
						withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.6)) {
							RevealBackground -= 300//234
							ScaleY = 1.0
							Radius = 0
						}
						withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 1.0, blendDuration: 0.6)) {
							ScaleX = 1.0
						}
					}
				}
			}
			.edgesIgnoringSafeArea(.all)
			.padding(.bottom, RevealBackground)
		}
		.padding(.vertical, ScaleY == 1.0 ? 0 : 32)
		.scaleEffect(x: ScaleX, y: ScaleY)
		.clipShape(RoundedRectangle(cornerRadius: Radius))
	}
}
