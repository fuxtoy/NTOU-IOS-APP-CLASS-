//
//  Golden_negative_recipe.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct Golden_negative_recipe: View {
    var body: some View {
        VStack(){
            Image("golden negative-test").resizable()
                .frame(width: .infinity, height: 250).scaledToFit().clipped()
            //Spacer()
            Text("Golden Negative Recipe")
                .font(.system(size: 30))
                .fontWeight(.heavy)
                .padding(20)
                .foregroundColor(.white)
            Text("Film Simulation:Classic Chrome\n\nDynamic Range:DR-Auto\n\nHightlight:+1\n\nShadow:-2\n\nColor:-2\n\nNoise Reduction:-2\n\nSharpeing:0\n\nWhite Balance:Daylight,+4 RED & -2 BLUE\n\nExposure Compensation:-1/3 to +1/3 ")
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

struct Golden_negative_recipe_Previews: PreviewProvider {
    static var previews: some View {
        Golden_negative_recipe()
    }
}
