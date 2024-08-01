//
//  TabView.swift
//  Educare - Ifra & Waniya
//
//  Created by DPI Student 037 on 7/15/24.
//

import SwiftUI

struct MyTabView: View { // Rename struct to avoid conflict
    
    var body: some View {
        
        
        TabView {
            
            
            NavigationStack {
                ContentView()
                
            }
            
            .tabItem {
                Label("Home", systemImage: "house")
                Label("Home", systemImage:"house.fill")
                    .foregroundStyle(.white)
                    .foregroundColor(Color("AccentColor"))
                
                
            }
            
            Text("Second view")
            
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                        .foregroundStyle(.white)
                        .foregroundColor(Color("AccentColor"))
                }
            
            Text ("Third view")
           
                .tabItem {
                    Label("Game", systemImage: "gamecontroller")
                        .foregroundStyle(.white)
                        .foregroundColor(Color("AccentColor"))
                }
            Text ("Third view")
            
                .tabItem {
                    Label("Chat", systemImage: "pencil")
                        .foregroundStyle(.white)
                        .foregroundColor(Color("AccentColor"))
                }
        }
        
    }
}

struct MyTabView_Previews: PreviewProvider {
  static var previews: some View {
    MyTabView() // Use the defined struct name
  }
}
