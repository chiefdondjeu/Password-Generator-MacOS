//
//  SavesView.swift
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/20/22.
//

import SwiftUI

struct SavesView: View {
    
    let passwords:[String] = []
    
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
