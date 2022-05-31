//
//  PostCardView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 30/05/2022.
//

import SwiftUI

struct PostCardView: View {
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 28)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-24-1, height: (UIScreen.ScreenWidth-24-1)*1.45)
				//.background(Image(Posts[num]).resizable())
				.clipShape(RoundedRectangle(cornerRadius: 28))

			RoundedRectangle(cornerRadius: 28)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-24, height: (UIScreen.ScreenWidth-24)*1.45)
				.background(.ultraThinMaterial)
				.clipShape(RoundedRectangle(cornerRadius: 28))
			
			RoundedRectangle(cornerRadius: 25)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-24-9, height: ((UIScreen.ScreenWidth-24)*1.45)-9)
				//.background(Image(Posts[num]).resizable())
				.clipShape(RoundedRectangle(cornerRadius: 25))
		}
		.padding(.bottom, 12)
	}
}

struct DetailPostCardView: View {
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 28)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-1, height: (UIScreen.ScreenWidth-1)*1.65)
				//.background(Image(Posts[num]).resizable())
				.clipShape(RoundedRectangle(cornerRadius: 28))

			RoundedRectangle(cornerRadius: 28)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth, height: (UIScreen.ScreenWidth)*1.65)
				.background(.ultraThinMaterial)
				.clipShape(RoundedRectangle(cornerRadius: 28))
					
			RoundedRectangle(cornerRadius: 25)
				.stroke(Color.ExploreCirclesColor, lineWidth: 0)
				.frame(width: UIScreen.ScreenWidth-9, height: ((UIScreen.ScreenWidth)*1.65)-9)
				//.background(Image(Posts[num]).resizable())
				.clipShape(RoundedRectangle(cornerRadius: 25))
		}
	}
}
struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView()
    }
}
