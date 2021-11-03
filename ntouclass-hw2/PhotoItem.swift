//
//  PhotoItem.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//

import SwiftUI

struct PhotoItem: View {
    var photoname:String="Kodachrome I"
    var body: some View {
        VStack{
            Image(photoname + " -" + String(1))
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black,lineWidth: 4))
                //.shadow( radius: 10)
            Text(photoname)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .offset(y:-5)
        }
        .offset(y:15)
    }
}

struct PhotoItem_Previews: PreviewProvider {
    static var previews: some View {
        PhotoItem()
    }
}
