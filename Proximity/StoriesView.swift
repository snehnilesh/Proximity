//
//  StoriesView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 23/05/2022.
//

import SwiftUI

struct StoriesView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<9) { num in
							ZStack {
								Circle()
									.stroke(Color.ExploreCirclesColor, lineWidth: 0)
									.frame(width: 76-1, height: 76-1)
									//.background(Image(Stories[num]).resizable().scaledToFit())
									.clipShape(Circle())
								
								Circle()
									.stroke(Color.ExploreCirclesColor, lineWidth: 0)
									.frame(width: 76, height: 76)
									.background(.ultraThinMaterial)
									.clipShape(Circle())
								
								Circle()
									.stroke(Color.ExploreCirclesColor, lineWidth: 0)
									.frame(width: 76-9, height: 76-9)
									//.background(Image(Stories[num]).resizable().scaledToFit())
									.clipShape(Circle())
							}
                        }
                    }
                    .padding(.horizontal, 12)
					.padding(.top, 6)
            }
			.introspectScrollView { scrollView in
				scrollView.bounces = false
			}
        }
		.padding(.bottom, 12)
    }
}

struct MyStoriesView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<15) { num in
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 70, height: 70)
                        .foregroundColor(Color.ExploreCirclesColor)
                }
            }
            .padding(.horizontal)
			.introspectScrollView { scrollView in
				scrollView.bounces = false
			}
        }
        .padding(.top)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
