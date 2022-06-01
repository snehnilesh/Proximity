//
//  SafeAreaView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI

struct SafeAreaView: View {
    var body: some View {
		if UIDevice.current.hasNotch {
			if UIDevice.current.userInterfaceIdiom == .phone {
				VStack {
					Rectangle()
						.frame(width: UIScreen.ScreenWidth, height: 44)
						.foregroundColor(Color.BackgroundColor)
					Spacer()
				}
				.edgesIgnoringSafeArea(.all)
			} else {
				GeometryReader { geometry in
					VStack {
						Rectangle()
							.frame(width: UIScreen.ScreenWidth, height: geometry.safeAreaInsets.top)
							.foregroundColor(Color.BackgroundColor)
						Spacer()
					}
					.edgesIgnoringSafeArea(.all)
				}
			}
		} else {
			GeometryReader { geometry in
				VStack {
					Rectangle()
						.frame(width: UIScreen.ScreenWidth, height: geometry.safeAreaInsets.top)
						.foregroundColor(Color.BackgroundColor)
					Spacer()
				}
				.edgesIgnoringSafeArea(.all)
			}
		}
    }
}

struct SafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaView()
    }
}
