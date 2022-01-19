//
//  CoffeeView.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import SwiftUI
struct CoffeeView:View{
    var body :some View{
        CoffeeViewcontrol()
    }
}

struct CoffeeView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeView()
    }
}
struct CoffeeViewcontrol :UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name:"main-coffee", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "coffeeViewController") as! coffeeViewController
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    

    
    typealias UIViewControllerType = UIViewController
    

    
    
}


