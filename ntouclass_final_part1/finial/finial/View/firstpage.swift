//
//  firstpage.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import SwiftUI

struct firstpage: View {
    var body: some View {
        TabView {
            showpage().tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            EventView().tabItem{
                    Image(systemName: "paintpalette.fill")
                    Text("Art Activities")
                }
            CoffeeView().tabItem
            {
                    Image(systemName: "cup.and.saucer.fill")
                    Text("Coffee time")
            }
            MovieView().tabItem {
                    Image(systemName: "theatermasks.fill")
                    Text("Movie")
            }

        }
    }
}

struct firstpage_Previews: PreviewProvider {
    static var previews: some View {
        firstpage()
    }
}
