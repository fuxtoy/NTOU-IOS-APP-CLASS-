//
//  Winter_blue_recipe.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct Winter_blue_recipe: View {
    var body: some View {
        VStack(){
            Image("Winter blue-recipe").resizable()
                .frame(width: .infinity, height: 250).scaledToFit().clipped()
            //Spacer()
            Text("Winter Blue Recipe")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(20)
                .foregroundColor(.white)
            Text("Film Simulation:Classic Chrome\n\nDynamic Range:DR-400\n\nHightlight:-1\n\nShadow:0\n\nColor:-2\n\nNoise Reduction:-2\n\nSharpeing:0\n\nWhite Balance:Daylight,0 RED & +2 BLUE\n\nExposure Compensation:+2/3 ")
                .font(.system(size:20))
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 0.157, saturation: 0.876, brightness: 0.851))
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)
            Spacer()
                
            
        }
        .scaleEffect()
        .background(LinearGradient(gradient: Gradient(colors:[ Color.blue , Color.gray]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x: 0, y: 0)))
        .ignoresSafeArea(.all)
    }
}

struct Winter_blue_recipe_Previews: PreviewProvider {
    static var previews: some View {
        Winter_blue_recipe()
    }
}
