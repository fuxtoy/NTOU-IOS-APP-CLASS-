//
//  BayerList.swift
//  ntouclass-hw2
//
//  Created by timchen on 2021/11/3.
//

import SwiftUI

struct BayerList: View {
    
    var body: some View {
                NavigationView {
                    List{
                    Section(header: Text("")){
                        ForEach(0 ..< 1){(item) in
                            NavigationLink(destination: Golden_negative_recipe()) {
                        BayerRow(bayercla: bayercatego[item])
                                }
                            }
                    }
                }
                .navigationBarTitle(Text("Bayer type camera recipe "), displayMode: .inline)
                NavigationLink(destination: Golden_negative_recipe())
                    {
                        BayerRow(bayercla: bayercatego[0])
                    }
            }
}
}

struct BayerList_Previews: PreviewProvider {
    static var previews: some View {
        BayerList()
    }
}
