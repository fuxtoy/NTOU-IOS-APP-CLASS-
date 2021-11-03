//
//  Trans1Row.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct Trans1Row: View {
    let trans1 : trans1cate
    var body: some View {
        HStack {
            Image(trans1.Recipe_name).resizable().scaleEffect().clipped().frame(width: 250, height: 200);            VStack(alignment: .leading){
                Text(trans1.Recipe_name)
                    .foregroundColor(.accentColor)
                    
                
                Text("TEST MECHINE -> "+trans1.test_on)
                    .scaleEffect()
                    .font(.system(size: 10))
                    .foregroundColor(.accentColor)
                    .padding([.top],40)
            }
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors:[ Color.yellow , Color.white]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x: 0, y: 0)))
       // .background(Image(bayercla.Recipe_name).resizable().scaleEffect().clipped().opacity(0.8))
        
    }
}
struct Trans1Row_Previews: PreviewProvider {
    static var previews: some View {
        Trans1Row(trans1 :trans1cate(Recipe_name:"Kodachrome I-recipe", test_on: "X-PRO1" )
        )
            .previewLayout(.sizeThatFits)
    }
}
