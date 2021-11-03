//
//  ClassRow.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//

import SwiftUI

struct ClassRow: View {
    let clas :catego
    var body: some View {
        HStack {
            Image(clas.Recipe_name)
                //.font(.custom("Marker Felt", size: 25))
                .resizable()
                .scaleEffect()
                .frame(width: 150, height: 200)
                .clipped()
            VStack(alignment: .leading){
                Text(clas.Recipe_name)
                    .foregroundColor(.black)
                    
                
                Text(clas.forwhat)
                    .foregroundColor(.black)
                    .padding([.top],40)
            }
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors:[ Color.gray , Color.white]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x: 0, y: 0)))
        
    }
}

struct ClassRow_Previews: PreviewProvider {
    static var previews: some View {
        ClassRow(clas :catego(Recipe_name:"Fujifilm Bayer", forwhat: "X-A1,X-F10,X100,X-A3")
        )
            .previewLayout(.sizeThatFits)
            
    }
}

