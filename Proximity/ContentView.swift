//
//  ContentView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 21/05/2022.
//

import SwiftUI

extension Color {
    static let BackgroundColor = Color("BackgroundColor")
    static let TabBarBackgroundColor = Color("TabBarBackgroundColor")
    static let TabBarTextColor = Color("TabBarTextColor")
    static let TabBarHighlightColor = Color("TabBarHighlightColor")
    static let TabBarSelectedTextColor = Color("TabBarSelectedTextColor")
	static let ShadowColor = Color("ShadowColor")
	static let PrimaryInvertColor = Color("PrimaryInvertColor")
}

extension UIScreen{
    static let ScreenWidth = UIScreen.main.bounds.size.width
    static let ScreenHeight = UIScreen.main.bounds.size.height
    static let ScreenSize = UIScreen.main.bounds.size
}

extension UIDevice {
    var hasNotch: Bool {
        let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }
}

struct ContentView: View {
	@State var PostCardTapped: Bool = false
	@State var SelectedTab: Int = 0
    var body: some View {
        ZStack {
            VStack {
                switch SelectedTab {
                case 0:
					HomeView(PostCardTapped: $PostCardTapped)
                case 1:
                    MessageView()
                case 2:
                    UploadView()
                case 3:
                    ExploreView()
                case 4:
                    ProfileView()
                default:
					HomeView(PostCardTapped: $PostCardTapped)
                }
            }
            VStack {
                Spacer()
				Group {
					TabBarGroup(SelectedTab: $SelectedTab)
						.animation(.interactiveSpring(response: 0.6, dampingFraction: 0.8, blendDuration: 0.8))
						.modifier(PushUpTabBar())
				}
				.frame(width: 320, height: 52)
				.opacity(PostCardTapped ? 0 : 100)
				.offset(x: 0, y: PostCardTapped ? 100 : 0)
				.animation(.interactiveSpring(response: 0.6, dampingFraction: 0.8, blendDuration: 0.8))
			}
        }
        .background(
            Color.BackgroundColor
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct PushUpTabBar: ViewModifier {
    func body(content: Content) -> some View {
        if UIDevice.current.hasNotch {
            if UIDevice.current.userInterfaceIdiom == .phone {
            content
            } else {
                content
                    .padding(.bottom)
            }
        } else {
            content
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
