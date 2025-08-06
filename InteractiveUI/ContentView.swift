//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var age = ""
    @State private var textTitle = "What is your name?"
    @State private var alert = ""
    var body: some View {
        VStack (spacing: 40){
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            TextField("Type your age...", text: $age)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            Text(alert)
                .font(.title)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
            Button("Submit") {
                alert = "Your name is \(name) and your age is \(age)."
                
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(Color.blue)
            Button("Confirm") {
                textTitle = "Welcome, \(name) (age \(age))"
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            .tint(Color.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
