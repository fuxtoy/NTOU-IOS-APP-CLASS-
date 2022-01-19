//
//  movieDetail.swift
//  finial
//
//  Created by timchen on 2021/12/26.
//


import URLImage
import SwiftUI

let BASE_IMAGE_URL = "https://image.tmdb.org/t/p/original/"
struct movieDetail : View {
    var movie: Movie
    var body: some View {
        VStack {
            URLImage(URL(string:  "\(BASE_IMAGE_URL)\(movie.poster_path)")!) {proxy in
                proxy.resizable()
                    .frame(width: UIScreen.main.bounds.height/8*3, height: UIScreen.main.bounds.height/2)
            }
            HStack {
                Text("介紹").foregroundColor(.red)
                Spacer()
            }
            Text(movie.overview).lineLimit(nil)
            Spacer()
        }.background(.gray).navigationBarTitle(Text(movie.title), displayMode: .inline)
            .padding()
    }
}


