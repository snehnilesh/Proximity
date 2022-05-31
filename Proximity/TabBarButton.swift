//
//  TabBarButton.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI

struct TabBarButton: View {
	@Binding var SelectedTab: Int
	@State var TabImage: String
	@State var TabIndex: Int
    var body: some View {
		GeometryReader { reader -> AnyView in
			
			return AnyView(
				Button {
					SelectedTab = TabIndex
					Haptics.shared.playMediumImpact()
				} label: {
					if SelectedTab == TabIndex {
						Image(systemName: TabImage == "magnifyingglass" ? TabImage : TabImage + ".fill")
							.resizable()
							.scaledToFit()
							.frame(height: 22)
							.font(.system(size: 22, weight: .semibold, design: .rounded))
							.foregroundColor(SelectedTab == TabIndex ? Color.TabBarSelectedTextColor : Color.TabBarTextColor)
					}
					else {
						Image(systemName: TabImage)
							.resizable()
							.scaledToFit()
							.frame(height: 22)
							.font(.system(size: 22, design: .rounded))
							.foregroundColor(SelectedTab == TabIndex ? Color.TabBarSelectedTextColor : Color.TabBarTextColor)
					}
				}
				.frame(width: 50, height: 50, alignment: .center)
			)
		}
    }
}
