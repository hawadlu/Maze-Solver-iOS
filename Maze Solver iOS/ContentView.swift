//
//  ContentView.swift
//  Maze Solver iOS
//
//  Created by Luke Adam Hawinkels on 5/01/21.
//

import SwiftUI

struct ContentView: View {
    //This variable is used to track the current view
    @State private var currentTab = "";
    
    var body: some View {
        TabView {
            Text("Algorithm")
                .onTapGesture {
                    self.currentTab = "algoTab";
                }
                .tabItem {
                    Image(systemName: "star");
                    Text("Algorithm");
                }
            Text("Game")
                .tabItem {
                    Image(systemName: "star.fill");
                    Text("Game");
                }
                .tag("algoTab");
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
