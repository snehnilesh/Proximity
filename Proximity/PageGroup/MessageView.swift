//
//  MessageView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 22/05/2022.
//

import SwiftUI
import Introspect

struct MessageView: View {
	var body: some View {
		ZStack {
			ScrollView(showsIndicators: false) {
				ForEach(0..<15) { num in
					MessageModule()
				}
				.padding(.top, 68)
				.padding(.bottom, 70)
			}
			.padding(.top, -12)
			.introspectScrollView { scrollView in
				scrollView.bounces = false
			}
			VStack {
				MessageTitleBarView
				Spacer()
			}
		}
    }
	
	private var MessageTitleBarView: some View {
		VStack {
			HStack {
				Text("Messages")
					.font(.system(size: 30, weight: .bold, design: .rounded))
					.padding(.leading)
					.padding(.vertical, 12)
				Spacer()
			}
		}
		.background(Color.BackgroundColor)
	}
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
