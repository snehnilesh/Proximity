//
//  LikeBarLeftButtons.swift
//  Proximity
//
//  Created by Sneh Nilesh on 31/05/2022.
//

import SwiftUI

struct LikeBarLeftButtons: View {
    var body: some View {
		VStack{
			HStack {
				Text("@snehnilesh")
					.font(.system(size: 20, design: .rounded))
					.bold()
				Spacer()
			}
			HStack {
				Text("London, UK")
					.font(.system(size: 14, design: .rounded))
					.bold()
					.opacity(0.75)
				Spacer()
			}
		}
    }
}
