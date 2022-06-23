//
//  SavesView.swift
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/20/22.
//

import SwiftUI

struct SavesView: View {
    var mypasswords:[PasswordModel] = [
        PasswordModel(value: "ClYGnW-U6z6l4-HpMzaH"),
        PasswordModel(value: "UqTwnz-E9XYFe-1X72MT"),
    ]
    var body: some View {
            List(mypasswords) { password in
                Text(password.value)
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
