//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by APPLE on 09/12/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            //Profile Image
            Image("developer")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            //Header
            HeaderView(title: "Credits")
            
            //Content
            Text("Twisha Solgama")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
            
        } // eo VStack
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
