//
//  customize.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/10/27.
//

import SwiftUI

struct customize: View {
    
    var body: some View {
                NavigationView {
                List{
                    Section(header: Text("Fujifilm Bayer Recipes")){
                    ForEach(0 ..< 1){(item) in
                        NavigationLink(destination: BayerList()) {
                    ClassRow(clas: category[item])
                            }
                        }
                    }
                    Section(header: Text("Fujifilm X-Trans I Recipes")){
                    ForEach(1 ..< 2) {(item) in
                    NavigationLink(destination: X_trans1List()) {
                        ClassRow(clas: category[item])
                            }
                        }
                    }
                    Section(header: Text("Fujifilm X-Trans IV Recipes")){
                    ForEach(2 ..< 3) {(item) in
                    NavigationLink(destination: X_trans4List()) {
                            ClassRow(clas: category[item])
                            }
                        }
                    }
                }
                .navigationBarTitle(Text("Category Of Recipes "), displayMode: .inline)
            }
}
}

struct customize_Previews: PreviewProvider {
    static var previews: some View {
        customize()
    }
}
