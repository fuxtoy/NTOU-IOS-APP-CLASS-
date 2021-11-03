//
//  PhotoPage.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//

import SwiftUI

struct PhotoPage: View {
    var nameNum:Int
    var body: some View {
        TabView{
            ForEach(1..<picNum[nameNum]+1){(index) in
                Image(nameList[nameNum] + " -" + String(index))
                    .resizable()
                    .scaledToFit()
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PhotoPage_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPage(nameNum: 0)
    }
}
