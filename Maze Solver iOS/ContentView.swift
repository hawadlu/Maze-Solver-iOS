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
    @State private var showDetails = false;
    
    var body: some View {
        DisplayImageView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
