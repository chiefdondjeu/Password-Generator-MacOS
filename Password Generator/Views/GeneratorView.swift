//
//  GeneratorView.swift
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/20/22.
//

import SwiftUI

struct GeneratorView: View {
    
    @State private var dashnumb: Int = 2
    @State var password: String = ""
    
    @State var placeholder = "xxxxxx-xxxxxx-xxxxxx"
    let placeholder_2 = "xxxxxx-xxxxxx-xxxxxx"
    let placeholder_3 = "xxxxxx-xxxxxx-xxxxxx-xxxx"
    
    var body: some View {
        VStack {
            HStack(spacing:10) {
                Text("Number of dashes:")
                
                Picker(
                    selection: $dashnumb,
                    label: Text(""),
                    content: {
                        Text("2").tag(2)
                        Text("3").tag(3)
                    })
                    .frame(width: 55)
                    .padding(.leading, -10.0)
                    .onReceive([self.dashnumb].publisher.first()) { val in
                        if val == 3 {
                            self.placeholder = self.placeholder_3
                            self.password = ""
                        } else {
                            self.placeholder = self.placeholder_2
                            self.password = ""
                        }
                    }
            }
            .padding(.top)
                
            Button("Generate") {
                self.password = CPP_Wrapper().generate_password_wrapper(dashnumb)
            }
            
            Divider()
                .frame(width: 300)
                .padding()
            
            VStack(spacing:10){
                TextField(placeholder, text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width:250)
                    .multilineTextAlignment(.center)
                    .disabled(true)
                
                HStack {
                    Button("Copy") {
                        // paste password to clipboard
                        if !password.isEmpty {
                            let pasteBoard = NSPasteboard.general
                            pasteBoard.clearContents()
                            pasteBoard.writeObjects([self.password as NSString])
                        }
                    }
                    
                    Button("Save") {
                        if !password.isEmpty {
                            // do somthing...
                        }
                        
                    }
                    .disabled(true)
                }
                    
            }
            .padding(.top, 6)
            
            Spacer()
        }
        .tabItem {
            Text("Generator")
        }
    }
    
}

struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            GeneratorView()
        }
    }
}
