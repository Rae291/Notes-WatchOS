//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by APPLE on 09/12/22.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK: - Property
    var title: String = ""
    
    //MARK: - Body
    var body: some View {
        VStack {
            //Title
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            //Seperator
            HStack {
                Capsule().frame(height: 1)
                Image(systemName: "note.text")
                Capsule().frame(height: 1)
            } // eo HStack
            .foregroundColor(.accentColor)
        } // eo VStack
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Credits")
    }
}
