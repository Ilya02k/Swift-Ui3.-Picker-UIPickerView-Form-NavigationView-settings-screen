//
//  ContentView.swift
//  swift 3
//
//  Created by Ann Dosova on 4.05.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var section = 0
    @State var isOn = false
    let settingsTime = ["One","Two","Three","Four"]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section("Color Preferences") {
                    Picker(selection: $section) {
                        ForEach(0..<settingsTime.count, id: \.self) { index in
                            Text(settingsTime[index])
                        }
                    } label: { Text("Time") }
                        .pickerStyle(.navigationLink)
                }
                
                Toggle(isOn: $isOn , label: {
                    Text("Plane Mode")
                }).tint(.yellow)
                   
            }.navigationBarTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
