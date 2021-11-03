//
//  ContentView.swift
//  ntouclass_hw1
//
//  Created by timchen on 2021/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("image1")
                .resizable()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
                .ignoresSafeArea()
            Text( " totoro ")
                .font(.system(size: 33.5, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .position(x: 200, y: 100)
            bodyy()
            face()
            Group{
                pattern().position(x: 220, y: 378)
                pattern().position(x: 270, y: 372)
                pattern().position(x: 320, y: 375)
                pattern().position(x: 190, y: 425)
                pattern().position(x: 240, y: 415)
                pattern().position(x: 290, y: 410)
                pattern().position(x: 340, y: 415)
            }
            little()
            
        }
    }
}
struct ContentView_Pimagereviews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
//body shape
struct bodyy : View{
    var body :some View{
        ZStack{
            //downthe ear
            Path{(path) in
                path.move(to: CGPoint(x: 160, y: 404))
                path.addQuadCurve(to: CGPoint(x: 174, y: 340), control: CGPoint(x: 165, y: 343))
            }.stroke(lineWidth: 0.3)
            Path{(path) in
                path.move(to: CGPoint(x: 374, y: 404))
                path.addQuadCurve(to: CGPoint(x: 358, y: 336), control: CGPoint(x: 367, y: 340))
            }.stroke(lineWidth: 0.3)
            Path{(path) in
                path.move(to: CGPoint(x: 160, y: 404))
                path.addQuadCurve(to: CGPoint(x: 145, y: 434), control: CGPoint(x: 160, y: 410))
            }.stroke(lineWidth: 0.3)
            Path{(path)in
                path.move(to: CGPoint(x: 374, y: 404))
                path.addQuadCurve(to: CGPoint(x:391 , y:434 ), control:  CGPoint(x: 382, y: 417)  )
            }.stroke(lineWidth: 0.3)
            Path{(path)in
                path.move(to: CGPoint(x: 145, y: 434))
                path.addQuadCurve(to: CGPoint(x: 128, y: 477), control: CGPoint(x: 131, y: 455))
            }.stroke(lineWidth: 0.3)
            Path{(path)in
                path.move(to: CGPoint(x: 141, y: 517))
                path.addQuadCurve(to: CGPoint(x: 128, y: 477), control: CGPoint(x: 124, y: 515))
            }.stroke(lineWidth: 0.3)
            //belly
            Group{
                    Ellipse()
                    .stroke(lineWidth: 0.3)
                    .frame(width: 286, height: 180)
                    .position(x: 280, y: 500)
                    

            }
        }
    

            Path{(path) in
                path.move(to: CGPoint(x: 217, y: 299))
                path.addQuadCurve(to: CGPoint(x: 314, y: 297), control: CGPoint(x: 264, y: 269))
            }.stroke(lineWidth: 0.3)
            Group{
                //ears
                Path{(path) in
                    path.move(to: CGPoint(x: 174, y: 340))
                    path.addQuadCurve(to: CGPoint(x: 217, y: 299), control: CGPoint(x: 180, y: 182))
                }.stroke(lineWidth: 0.3)
                Path{(path) in
                    path.move(to: CGPoint(x: 314, y: 297))
                    path.addQuadCurve(to: CGPoint(x: 358, y: 336), control: CGPoint(x: 345, y: 174))
                }.stroke(lineWidth: 0.3)
            }

        }
    }

struct face : View{
    var body :some View {
        Path{ (path) in
            path.move(to: CGPoint(x: 255, y: 352))
            path.addQuadCurve(to: CGPoint(x: 273, y: 352), control: CGPoint(x: 264, y: 359))
        }
        //right
        Path{(path)in
            path.move(to: CGPoint(x: 192, y: 365))
            path.addQuadCurve(to: CGPoint(x: 140, y: 352), control: CGPoint(x: 172, y: 353))
        }
        .stroke()
        Path{(path)in
            path.move(to: CGPoint(x: 181, y: 382))
            path.addQuadCurve(to: CGPoint(x: 140, y: 386), control: CGPoint(x: 160, y: 380))
        }
        .stroke()
        Path{(path)in
            path.move(to: CGPoint(x: 187, y: 372))
            path.addQuadCurve(to: CGPoint(x: 135, y: 362), control: CGPoint(x: 165, y: 364))
        }
        .stroke()
        //left
        Path{(path)in
            path.move(to: CGPoint(x: 336, y: 365))
            path.addQuadCurve(to: CGPoint(x: 375, y: 352), control: CGPoint(x: 353, y: 354))
        }
        .stroke()
        Path{(path)in
            path.move(to: CGPoint(x: 345, y: 368))
            path.addQuadCurve(to: CGPoint(x: 380, y: 358), control: CGPoint(x: 360, y: 360))
        }
        .stroke()
        Path{(path)in
            path.move(to: CGPoint(x: 340, y: 375))
            path.addQuadCurve(to: CGPoint(x: 385, y: 376), control: CGPoint(x: 372, y: 372))
        }
        .stroke()
        Path{(path)in
            path.move(to: CGPoint(x: 256, y: 376))
            path.addQuadCurve(to: CGPoint(x: 268, y: 376), control: CGPoint(x: 265, y: 368))
        }
        .stroke()
        Group{
            Ellipse()
                .fill(Color.blue)
                .frame(width: 30 , height: 30)
                .position(x:214 , y:344)
            
            Ellipse()
                .fill(Color.blue)
                .frame(width: 30 , height: 30)
                .position(x:308 , y:334)
            Ellipse()
                .fill(Color.black)
                .frame(width: 6 , height: 10)
                .position(x:206 , y:340)
            
            Ellipse()
                .fill(Color.black)
                .frame(width: 6 , height: 10)
                .position(x:298 , y:330)
                          
        }
        
    }
}
struct  pattern :View{
    var body : some View{
        Path{(path) in
            path.move(to: CGPoint(x: 170, y: 469))
            path.addQuadCurve(to: CGPoint(x: 204, y: 466), control: CGPoint(x: 175, y: 425))
            path.addQuadCurve(to: CGPoint(x: 170, y: 469), control: CGPoint(x: 178, y: 445))
        }.fill(Color(red: 1/255 , green: 112/255, blue: 106/255))
    }
}
struct little: View{
    var body: some View{
        Path{(path) in
            path.move(to: CGPoint(x: 230, y: 291))
            path.addQuadCurve(to: CGPoint(x: 229, y: 204), control: CGPoint(x: 196, y: 264))
            path.addQuadCurve(to: CGPoint(x: 250, y: 187), control: CGPoint(x: 232, y: 114))
            path.addQuadCurve(to: CGPoint(x: 278, y: 184), control: CGPoint(x: 263, y: 177))
            path.addQuadCurve(to: CGPoint(x: 299, y: 199), control:CGPoint(x: 294, y: 110))
            path.addQuadCurve(to: CGPoint(x: 297, y: 290), control: CGPoint(x: 320, y: 263))
            path.addQuadCurve(to: CGPoint(x: 230, y: 291), control: CGPoint(x: 268, y: 273))
        }.fill(Color(red: 1/255, green: 248/255, blue: 245/255))
        Ellipse()
            .fill(Color(red:1, green: 1, blue: 1))
            .frame(width: 20, height: 20)
            .position(x: 245, y: 212)
        Ellipse()
            .fill(Color(red:1, green: 1, blue: 1))
            .frame(width: 20, height: 20)
            .position(x: 285, y: 212)
        Ellipse()
            .fill(Color.black)
            .frame(width: 5, height: 5)
            .position(x: 245, y: 212)
        Ellipse()
            .fill(Color.black)
            .frame(width: 5, height: 5)
            .position(x: 285, y: 212)
        }
    }

