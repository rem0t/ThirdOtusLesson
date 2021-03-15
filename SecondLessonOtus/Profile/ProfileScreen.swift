//
//  ProfileScreen.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 28.02.2021.
//

import SwiftUI

struct ProfileScreen: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        CustomNavControllerView(transition: .custom(.moveAndFade)) {
            ProfileScreenContents()
        }
        
    }
    
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
