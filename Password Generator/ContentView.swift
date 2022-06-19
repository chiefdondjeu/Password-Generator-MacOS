//
//  ContentView.swift
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Text("Generator")
                }
            
            ScrollView()
                .tabItem {
                    Text("History")
                }
        }
        .frame(width: 300, height: 300)
    }
}


struct MainView: View {
    
    @State var dashcount: Int = 2
    @State var password: String = ""
    
    func generate_password() {
        
    }
    
    var body: some View {
        List {
            Picker(
                selection: $dashcount,
                label: Text("Number of Dashes"),
                content: {
                    Text("2").tag(2)
                    Text("3").tag(3)
            })
            
            Button(
                action: {
                    CPP_Wrapper().generate_password_wrapper(dashcount)
                },
                label: { Text("Generate") }
            )
        }
    }
}

struct ScrollView: View {
    var body: some View {
        Text("History Contents")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
