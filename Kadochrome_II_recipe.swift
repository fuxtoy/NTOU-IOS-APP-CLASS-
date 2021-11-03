//
//  Kadochrome_II_recipe.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct Kadochrome_II_recipe: View {
    var body: some View {
        VStack(){
            Image("Kodachrome II-recipe").resizable()
                .frame(width: .infinity, height: 250).scaledToFit().clipped()
            //Spacer()
            Text("Kodachrome II Recipe")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(20)
                .foregroundColor(.white)
            Text("Film Simulation:Classic Chrome\n\nDynamic Range:DR-400\n\nHightlight:+1\n\nShadow:+2\n\nColor:-2\n\nNoise Reduction:-2\n\nSharpeing:+2\n\nWhite Balance:Auto,+1 RED & -2 BLUE\n\nExposure Compensation:+1/3 to +2/3\n\nISO:Auto,up to ISO 3200 ")
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

struct Kadochrome_II_recipe_Previews: PreviewProvider {
    static var previews: some View {
        Kadochrome_II_recipe()
    }
}
