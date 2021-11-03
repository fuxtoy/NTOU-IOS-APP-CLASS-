//
//  X-trans1List.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//

import SwiftUI

struct X_trans1List: View {
    
    var body: some View {
                NavigationView {
                List{
                    Section(header: Text("Fujifilm Bayer Recipes")){
                    ForEach(0 ..< 1){(item) in
                        NavigationLink(destination: Kodachrome_I_recipe()) {
                    Trans1Row(trans1:trans1catego[item])
                            }
                        }
                    }
                    Section(header: Text("Fujifilm X-Trans I Recipes")){
                    ForEach(1 ..< 2) {(item) in
                    NavigationLink(destination: Kadochrome_II_recipe()) {
                        Trans1Row(trans1:trans1catego[item])
                            }
                        }
                    }
                    Section(header: Text("Fujifilm X-Trans IV Recipes")){
                    ForEach(2 ..< 3) {(item) in
                    NavigationLink(destination: Winter_blue_recipe()) {
                        Trans1Row(trans1:trans1catego[item])
                            }
                        }
                    }
                }
                .navigationBarTitle(Text("X-Trans I type camera Recipes "), displayMode: .inline)
            }
}
}

struct X_trans1List_Previews: PreviewProvider {
    static var previews: some View {
        X_trans1List()
    }
}
