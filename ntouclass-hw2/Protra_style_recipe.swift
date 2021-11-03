//
//  Protra_style_recipe.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct Protra_style_recipe: View {
    var body: some View {
        VStack(){
            Image("portra-style-recipe").resizable()
                //.frame(width:UIScreen.main.bounds.width)
                .frame(width: .infinity, height: 250).scaledToFit().clipped()
            //Spacer()
            Text("Portra-Style Recipe")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(20)
                .foregroundColor(.white)
            Text("Film Simulation:Classic Chrome\n\nDynamic Range:DR-Auto\n\nClarity:+3\n\nISO:Auto,up to ISO 6400\n\nColor:+1\n\nNoise Reduction:-4\n\nSharpeing:-2\n\nWhite Balance:5000K,+2 RED & -6 BLUE\n\nExposure Compensation:0 to +2/3 ")
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

struct Protra_style_recipe_Previews: PreviewProvider {
    static var previews: some View {
        Protra_style_recipe()
    }
}
