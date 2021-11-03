//
//  photowall.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//


import SwiftUI

struct photowall: View {
    var picNum=[5,6,5,6,6,8]
    var nameList=["Kodachrome I","Kodachrome II","Winter blue","golden negative","portra-style","fujicolor c200"]
    var body: some View {
        NavigationView{
            VStack{
                ScrollView(.horizontal){
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows){
                        ForEach(0..<6){(index) in
                            NavigationLink(
                                destination:
                                    PhotoPage(nameNum: index)
                            )
                            {
                                PhotoItem(photoname:nameList[index])
                            }
                        }
                    }
                    .frame(height:150)
                    .offset(x: 5)
                }
                
                .frame(height:150)
                //.background(Color(red: 255/255, green: 227/255, blue: 224/255))
                ScrollView(.vertical){
                     let colums=[GridItem(.adaptive(minimum: 150))]
                     
                     LazyVGrid(columns: colums){
                         ForEach(1..<21){item in
                             NavigationLink(
                                 destination: Image("img" + " (" + String(item) + ")")
                                     .resizable()
                                     .scaledToFit()
                                 
                             ){
                                 VStack{
                                     Image("img"+" ("+String(item)+")")
                                         .resizable()
                                         .scaleEffect()
                                         .frame(height:150)
                                         .clipped()
                                 
                                 }
                                 
                             }
                             
                         }
                     }
                     
                }
                .padding()
                .navigationBarTitle("Photo Wall",displayMode: .inline)
                
            }
        }
        
        //.padding()
        //.background(Color(red: 255/255, green: 227/255, blue: 224/255,opacity:0.7))
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct photowall_Previews: PreviewProvider {
    static var previews: some View {
        photowall()
    }
}

