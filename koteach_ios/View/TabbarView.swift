//
//  TabbarView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI


struct ContentView : View {
  var body: some View {
    TabView {
      Text("The First Tab")
        .tabItem {
          Image(systemName: "1.square.fill")
          Text("First")
        }
      Text("Another Tab")
        .tabItem {
          Image(systemName: "2.square.fill")
          Text("Second")
        }
      Text("The Last Tab")
        .tabItem {
          Image(systemName: "3.square.fill")
          Text("Third")
        }
        .badge(10)
    }
    .font(.headline)
  }
}
