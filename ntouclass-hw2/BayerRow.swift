//
//  BayerRow.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct BayerRow: View {
    let bayercla : bayercate
    var body: some View {
        HStack {
            Image(bayercla.Recipe_name).resizable().scaleEffect().clipped().frame(width: 250, height: 200);            VStack(alignment: .leading){
                Text("Golden Negative")
                    .foregroundColor(.accentColor)
                    
                
                Text("TEST MECHINE -> "+bayercla.test_on)
                    .foregroundColor(.accentColor)
                    .padding([.top],40)
            }
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors:[ Color.yellow , Color.white]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x: 0, y: 0)))
       // .background(Image(bayercla.Recipe_name).resizable().scaleEffect().clipped().opacity(0.8))
        
    }
}

struct BayerRow_Previews: PreviewProvider {
    static var previews: some View {
        BayerRow(bayercla :bayercate(Recipe_name:"golden negative-test", test_on: "X-T200" )
        )
            .previewLayout(.sizeThatFits)
        
    }
}
