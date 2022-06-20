//
//  SavesView.swift
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/20/22.
//

import SwiftUI

struct SavesView: View {
    let passwords:[String] = ["ASrDtn-2huTH-fxzWa", "rSp93r-hMEd9-d7zA0", "F5oFHg-5Ls7i-yrBbt", "s3pW5O-JedEn-fG2r7"]
    
    var body: some View {
            List(self.passwords, id:\.self) { password in
                Text(password)
                    .frame(width:300)
            }
            .tabItem {
                Text("Saves")
            }
            .padding()
    }
}

struct SavesView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            SavesView()
        }
        
    }
}
