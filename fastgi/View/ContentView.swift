//
//  ContentView.swift
//  fastgi
//
//  Created by Hegaro on 03/08/2020.
//  Copyright © 2020 Hegaro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var manager = NetworkingManager()
    var body: some View {
        Text("content")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
