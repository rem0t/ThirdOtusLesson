//
//  ProfileScreenContents.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 28.02.2021.
//

import SwiftUI
import Core

struct ProfileScreenContents: View {
    
    @EnvironmentObject var router: Router
    
    var columns: [GridItem] = Array(repeating: .init(), count: 3)
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 20) {
                    HStack(spacing: 50) {
                        NavPushButton(destination: LazyView(ProfileInteriorScreen())) {
                            Text("Tap me").font(.title)
                        }
                        Text("🏛").font(.title).onTapGesture {
                            router.tabSelection = 0
                        }
                    }
                    HStack {
                        Spacer()
                    }
                }
            }
        }
    }
    
}
