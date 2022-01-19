//
//  MovieRow.swift
//  finial
//
//  Created by timchen on 2021/12/27.
//

import URLImage
import SwiftUI

struct MovieRow : View {
    var movie: Movie
    
    var body: some View {
        HStack {
            URLImage(URL(string:  "\(BASE_IMAGE_URL)\(movie.poster_path)")!) { proxy in
                proxy.resizable()
                    .frame(width: 90, height: 120)
                
            }
            
            VStack {
                Spacer()
                HStack {
                    Text(movie.title)
                        .foregroundColor(.blue)
                        .lineLimit(nil)
                    Spacer()
                }
                HStack {
                    Text(movie.release_date).foregroundColor(.red)
                    Spacer()
                    Text("Rate: \(movie.vote_average.format())")
                }

                Spacer()
            }
        }.frame(height: 120)
        .background(LinearGradient(gradient: Gradient(colors:[ Color.yellow , Color.white]), startPoint: UnitPoint(x: 1, y: 1), endPoint: UnitPoint(x: 0, y: 0)))    }
}

extension Float {
    func format() -> String {
        return String(format: "%.1f",self)
    }
}


