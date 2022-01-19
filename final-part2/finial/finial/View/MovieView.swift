//
//  MovieView.swift
//  finial
//
//  Created by timchen on 2021/12/27.
//

import Foundation
import SwiftUI

struct MovieView : View {
    @ObservedObject var networkManager = NetworkManager()
    @StateObject var movieModel = NetworkManager()
    @State private var showAlert = false
    var body: some View {
        NavigationView {
            VStack {
                if networkManager.loading && movieModel.movies.results.isEmpty {
                    ProgressView()
                }
                else if !networkManager.loading && movieModel.movies.results.isEmpty{
                    Text("disable to connect")
                }
                else {
                    List(networkManager.movies.results) { movie in
                        NavigationLink(destination: movieDetail(movie: movie)){
                            MovieRow(movie: movie)
                        }
                    }
                }

            }.refreshable{
                showAlert = true
            }
            .navigationBarTitle(Text("Movies"))

        }.alert("沒有網路連線", isPresented: $showAlert, actions: {Button("OK"){ }})

        
    }
}

struct MovieView_Previews : PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
