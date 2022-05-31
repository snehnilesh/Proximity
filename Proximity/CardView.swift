//
//  CardView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI

struct CardView: View {
	@Binding var PostCardTapped: Bool
	@Binding var PostCardMoveUp: Bool
	@Binding var BringUpDetail: Bool
	@Binding var Index: Int
	@Binding var SelectedIndex: Int
	@State var BouncePostCard = 1.0
	@State var BounceLikeBar = 1.0
	@Namespace var Namespace
    var body: some View {
		//GeometryReader { geometry in
			Group {
				VStack {
					ZStack {
						PostCardView()
						.simultaneousGesture(DragGesture(minimumDistance: 10)
							.onChanged { _ in
								withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.8, blendDuration: 0.8)) {
									BouncePostCard -= 0.01
								}
								DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
									withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.8, blendDuration: 0.8)) {
										BouncePostCard += 0.01
										PostCardMoveUp = true
									}
								}
							}
							.onEnded { _ in
								PostCardTapped = true
								SelectedIndex = Index
								DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
									Haptics.shared.playMediumImpact()
									BringUpDetail = true
								}
							})
						VStack {
							Spacer()
							LikeBarView()
								.scaleEffect(BounceLikeBar)
								.onTapGesture {
									Haptics.shared.playMediumImpact()
									withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.8, blendDuration: 0.8)) {
										BounceLikeBar -= 0.01
									}
									DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
										withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.8, blendDuration: 0.8)) {
											BounceLikeBar += 0.01
										}
									}
								}
						}
					}
					.scaleEffect(BouncePostCard)
				}
				.statusBar(hidden: PostCardTapped)
				//GET DISTANCE FROM TOP OF CARD TO TOP OF SCREEN
				//--------------------------
				.offset(x: 0, y: PostCardTapped ? -160 : 0)//45-(geometry.frame(in: .global).minY) : 0)
				.animation(.interactiveSpring(response: 0.4, dampingFraction: 0.8, blendDuration: 0.8))
			}
		//	Text("\(geometry.frame(in: .global).maxY)")
		//}
		.matchedGeometryEffect(id: Index, in: Namespace, properties: .frame, isSource: true)
	}
}
