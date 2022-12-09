//
//  Settings.swift
//  Notes Watch App
//
//  Created by APPLE on 09/12/22.
//

import SwiftUI

struct Settings: View {
    
    //MARK: - Property
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    //MARK: - Functions
    func update() {
        lineCount = Int(value)
    }
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 8) {
            //Header
            HeaderView(title: "Settings")
            
            //Line Count
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            //Slider
            Slider(
                value:
                    Binding(
                        get: {self.value},
                        set: { newValue in
                            self.value = newValue
                            self.update()
                        }
                    ),
                in: 1...4, step: 1
            )
            .tint(.accentColor)
            
        } // eo VStack
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
