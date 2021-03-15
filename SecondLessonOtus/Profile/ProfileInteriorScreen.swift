//
//  ProfileInteriorScreen.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 28.02.2021.
//

import SwiftUI

struct ProfileInteriorScreen: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            NavPopButton(destination: .previous) {
                Image(systemName: "arrow.left.circle.fill")
                    .font(.largeTitle)
            }
            Text("Interior 👨‍💻")
                .font(.largeTitle)
                .padding(.top, 200)
            
        }
        
    }
}
struct TwoColumnScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInteriorScreen()
    }
}
