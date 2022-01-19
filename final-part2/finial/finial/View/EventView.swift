//
//  EventView.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import SwiftUI
import UIKit




struct EventView :UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> UIViewController {
        let board = UIStoryboard(name:"main", bundle: nil)
        let control = board.instantiateViewController(identifier: "ViewController") as! ViewController
        return control
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    

    
    typealias UIViewControllerType = UIViewController
    

    
    
}


struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
