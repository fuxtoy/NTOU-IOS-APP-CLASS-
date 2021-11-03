//
//  X-trans4List.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//

import SwiftUI

struct X_trans4List: View {
    
    var body: some View {
                NavigationView {
                List{
                    Section(header: Text("PorTra-Style Recipes")){
                    ForEach(0 ..< 1){(item) in
                        NavigationLink(destination: Protra_style_recipe()) {
                    Trans4Row(trans4:trans4catego[item])
                            }
                        }
                    }
                    Section(header: Text("Fujifilm X-Trans II Recipes")){
                    ForEach(1 ..< 2) {(item) in
                    NavigationLink(destination: Fujicolor_c200_recipe()) {
                        Trans4Row(trans4:trans4catego[item])
                            }
                        }
                    }
                }
                .navigationBarTitle(Text("X-Trans IV type camera Recipes "), displayMode: .inline)
            }
}
}

struct X_trans4List_Previews: PreviewProvider {
    static var previews: some View {
        X_trans4List()
    }
}
