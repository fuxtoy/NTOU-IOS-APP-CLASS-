//
//  Fujicolor_c200_recipe.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct Fujicolor_c200_recipe: View {
    var body: some View {
        VStack(){
            Image("fujicolor c200-recipe").resizable()
                .frame(width: .infinity, height: 250).scaledToFit().clipped()
            //Spacer()
            Text("Portra-Style Recipe")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(20)
                .foregroundColor(.white)
            Text("Film Simulation:Classic Chrome\n\nDynamic Range:DR400\n\nHighlight:+0.5\n\nShadow:-0.5\n\nISO:Auto,up to ISO 6400\n\nColor:+2\n\nNoise Reduction:-4\n\nSharpeing:-3\n\nWhite Balance:Daylight,0 RED & -3 BLUE\n\nExposure Compensation:0 to +2/3 ")
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

struct Fujicolor_c200_recipe_Previews: PreviewProvider {
    static var previews: some View {
        Fujicolor_c200_recipe()
    }
}
