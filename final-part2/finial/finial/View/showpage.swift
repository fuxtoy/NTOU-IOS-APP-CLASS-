//
//  showpage.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import SwiftUI

struct showpage: View {
    @State private var show = false
    @State private var position = CGSize.zero
    @GestureState private var dragOffset = CGSize.zero
    var body: some View {
        ZStack {
            Image("back")
                //.resizable()
                .padding()
                //.frame(width: 500, height: 500)
                .scaledToFit()
                .ignoresSafeArea(.all)
            VStack {
                VStack {
                    if show{
                        Text("Hipster")
                            .font(.custom("Mukasi-Mukasi", size: 90)).fontWeight(.heavy).foregroundColor(Color.black)
                            
                            .gesture(
                                DragGesture()
                                    .updating($dragOffset, body: { (value, state, transaction) in
                                        state = value.translation
                                    })
                                    .onEnded({(value) in
                                        self.position.height += value.translation.height
                                        self.position.width +=
                                        value.translation.width
                                    })
                            )
                        
                    }
                }
                .foregroundColor(.black)
                .background(LinearGradient(gradient: Gradient(colors:[ Color.pink , Color.white]), startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 1, y: 1)))              .padding()
                .cornerRadius(50)
                .offset(x:0,y:-250)
                .transition(.scale)
               // Spacer(minLength: 40)
                Link( destination :URL(string: "https://www.chimeimuseum.org/exhibition-event")!,label:{Image("chimei")
                        .resizable()
                        .frame(width: 90, height: 70)
                        .scaledToFit()
                        .offset(x: 0, y: 250)
                })
                Link( destination :URL(string: "https://www.chimeimuseum.org/exhibition-event")!,label:{Image("松菸")
                        .resizable()
                        .frame(width: 90, height: 70)
                        .scaledToFit()
                        .offset(x: 120, y: 180)
                })
                Link( destination :URL(string: "https://www.npac-ntt.org/program/events")!,label:{Image("國家歌劇院")
                        .resizable()
                        .frame(width: 90, height: 70)
                        .scaledToFit()
                        .offset(x: -120, y: 95)
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
struct showpage_Previews: PreviewProvider {
    static var previews: some View {
        showpage()
    }
}
