//
//  first_page.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//

import SwiftUI

struct first_page: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("主頁")
                    
                }
            customize()
                .tabItem {
                    Image(systemName: "list.bullet.circle")
                    Text("Recipes")
            }
            photowall()
                .tabItem {
                        Image(systemName: "camera.fill")
                        Text("照片牆")
                }
        }
    }
}

struct first_page_Previews: PreviewProvider {
    static var previews: some View {
        first_page()
        first_page().preferredColorScheme(.dark)
    }
}
