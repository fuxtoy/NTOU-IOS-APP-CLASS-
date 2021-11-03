//
//  Trans4Row.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct Trans4Row: View {
    let trans4 : trans4cate
    var body: some View {
        HStack {
            Image(trans4.Recipe_name).resizable().scaleEffect().clipped().frame(width: 250, height: 200);            VStack(alignment: .leading){
                Text(trans4.Recipe_name)
                    .foregroundColor(.accentColor)
                    .scaleEffect()
                    
                
                Text("TEST MECHINE \n-> "+trans4.test_on)
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
struct Trans4Row_Previews: PreviewProvider {
    static var previews: some View {
        Trans4Row(trans4 :trans4cate(Recipe_name:"portra-style-recipe", test_on: "X-E4" )
        )
            .previewLayout(.sizeThatFits)
    }
}
