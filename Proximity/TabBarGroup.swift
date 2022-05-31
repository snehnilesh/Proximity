//
//  TabBarGroup.swift
//  Proximity
//
//  Created by Sneh Nilesh on 31/05/2022.
//

import SwiftUI

struct TabBarGroup: View {
	@Binding var SelectedTab: Int
	@State var TabImage: String = ""
	@State var TabIndex: Int = 0
    var body: some View {
		ZStack {
			Capsule()
				.opacity(0.8)
				.frame(width: 320, height: 52)
				.foregroundColor(Color.TabBarBackgroundColor)
				.shadow(color: Color.TabBarBackgroundColor.opacity(0.2), radius: 5, x: 0, y: 0)
				.background(.ultraThinMaterial)
				.clipShape(Capsule())
		
			Capsule()
				.frame(width: 54, height: 34)
				.foregroundColor(Color.TabBarHighlightColor)
				.shadow(color: Color.TabBarHighlightColor.opacity(0.2), radius: 3, x: 0, y: 0)
				.offset(x: self.computeActiveSegmentHorizontalOffset(), y: 0)
				.animation(.interactiveSpring(response: 0.6, dampingFraction: 0.8, blendDuration: 0.8))

			HStack{
				TabBarButton(SelectedTab: $SelectedTab, TabImage: "house", TabIndex: 0)
				TabBarButton(SelectedTab: $SelectedTab, TabImage: "paperplane", TabIndex: 1)
				TabBarButton(SelectedTab: $SelectedTab, TabImage: "plus.app", TabIndex: 2)
				TabBarButton(SelectedTab: $SelectedTab, TabImage: "magnifyingglass", TabIndex: 3)
				TabBarButton(SelectedTab: $SelectedTab, TabImage: "person", TabIndex: 4)
			}
			.padding(.horizontal)
		}
    }
	
	private func computeActiveSegmentHorizontalOffset() -> CGFloat {
		CGFloat(Double(self.SelectedTab)*59.5-Double(2*(54+6)))
	}
}
