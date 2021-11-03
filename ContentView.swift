//
//  ContentView.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {

        ZStack {
            Image("wallpaper")
                .resizable()
                .padding()
                .frame(width: 500, height: 500)
                .scaledToFit()

            VStack {
                VStack {
                    if show{
                        Text("FujiFilm")
                            .font(.system(size: 90)).fontWeight(.heavy)
                    }
                }
                .foregroundColor(.black)
                .background(LinearGradient(gradient: Gradient(colors:[ Color.gray , Color.white]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))              .padding()
                .cornerRadius(50)
                .offset(x:0,y:-300)
                .transition(.scale)
               // Spacer(minLength: 40)
                Link( destination :URL(string: "https://fujixweekly.com")!,label:{Image("camera-2")
                        .resizable()
                        .frame(width: 90, height: 70)
                        .scaledToFit()
                        .offset(x: 0, y: 250)
                })
            }
            .animation(.easeOut(duration: 3)
                        .repeatForever(autoreverses: true),value : show)
            .onAppear{
                show = true
            }
                
        }


    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().preferredColorScheme(.dark)
    }
}

