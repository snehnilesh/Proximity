//
//  ProfileView.swift
//  Proximity
//
//  Created by Sneh Nilesh on 21/05/2022.
//

import SwiftUI
import Introspect

struct ProfileView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Circle()
                    .foregroundColor(Color.ExploreCirclesColor)
                    .frame(width: 150, height: 150)
                    .padding(.top)
                Text("Sneh Nilesh")
                    .font(.system(size: 28, weight: .medium, design: .rounded))
                    .bold()
                    .foregroundColor(Color.primary)
                    .padding(.top)
                
                Text("@snehnilesh")
                    .font(.system(size: 16 , design: .rounded))
                    .bold()
                    .foregroundColor(Color.primary)

                    .opacity(0.6)
                
				VStack{
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: (UIScreen.ScreenWidth-52)/2.5, height: 50)
                            .foregroundColor(Color.ExploreCirclesColor)
                        Text("Follow")
                            .font(.system(size: 18 , design: .rounded))
                            .bold()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: (UIScreen.ScreenWidth-52)/2.5, height: 50)
                            .foregroundColor(Color.ExploreCirclesColor)
                        Text("Message")
                            .font(.system(size: 18 , design: .rounded))
                            .bold()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: (((UIScreen.ScreenWidth-52)/2) + ((UIScreen.ScreenWidth-52)/2))/4.75, height: 50)
                            .foregroundColor(Color.ExploreCirclesColor)
                        Image(systemName: "plus")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                    }
					
                }
                .padding(.horizontal)
                .padding(.top)
//					HStack {
//						ZStack {
//							RoundedRectangle(cornerRadius: 20)
//								.frame(width: (UIScreen.ScreenWidth-52)/1.23, height: 50)
//								.foregroundColor(Color.ExploreCirclesColor)
//							Text("Follow")
//								.font(.system(size: 18 , design: .rounded))
//								.bold()
//						}
//						ZStack {
//							RoundedRectangle(cornerRadius: 20)
//								.frame(width: (((UIScreen.ScreenWidth-52)/2) + ((UIScreen.ScreenWidth-52)/2))/4.75, height: 50)
//								.foregroundColor(Color.ExploreCirclesColor)
//							Image(systemName: "gear")
//								.font(.system(size: 18, weight: .semibold, design: .rounded))
//						}
//					}
				}
                MyStoriesView()

                Spacer()
            }
        }
		.introspectScrollView { scrollView in
			scrollView.bounces = false
		}
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
