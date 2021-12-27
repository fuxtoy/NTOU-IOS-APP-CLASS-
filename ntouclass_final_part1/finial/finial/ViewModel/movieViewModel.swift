//
//  movieViewModel.swift
//  finial
//
//  Created by timchen on 2021/12/26.
//

import Alamofire
import Foundation
import Combine

class NetworkManager: ObservableObject {
    @Published var movies = MovieList(results: [])
    @Published var loading = false
    
    private let api_key = "111b98092fdf66a7f363935fa33d57c8"
    private let api_url_base = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key="
    init() {
        loading = true
        loadDataByAlamofire()
    }
    
    
    private func loadDataByAlamofire() {
        AF.request("\(api_url_base)\(api_key)").responseJSON{ response in
                guard let data = response.data
                else {
                    return
                }
                let movies = try! JSONDecoder().decode(MovieList.self, from: data)
                DispatchQueue.main.async {
                    self.movies = movies
                    self.loading = false
                }
        }
    
    }
}

