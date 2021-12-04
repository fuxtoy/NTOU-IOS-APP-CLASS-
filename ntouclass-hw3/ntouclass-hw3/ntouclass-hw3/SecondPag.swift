//
//  SecondPag.swift
//  ntouclass-hw3
//
//  Created by timchen on 2021/12/1.
//
import SwiftUI

struct SecondPag: View {
    @Binding var showSecondPage: Bool
    @Binding var isProfile: Bool
    @Binding var cosplay: String
    @Binding var name: String
    @Binding var diedate: Date
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter
    }()
    @Binding var diedate_time: Date
    let Formatter: DateFormatter = {
        let Formatter = DateFormatter()
        Formatter.dateStyle = .medium
        return Formatter
    }()

    @Binding var chance: Int
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    @State private var showAlert = false
    @State private var showSheet = false
    @State private var showUp = false
    @State private var showHeart = false
    var number = Int.random(in: 0...3)
    var body: some View {
        VStack {
            if (isProfile && name != ""){
                Image(cosplay)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                Text(cosplay).font(.custom("HanyiSentySuciTablet", size: 70))

            }
            else {
                Text("選擇當旁觀者")                .font(.custom("HanyiSentySuciTablet", size: 50))
                Image("旁觀者")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
            }
            if name == "" {
                Text("想當神明\n卻沒有想審判的人？")
                .font(.custom("HanyiSentySuciTablet", size: 50))

                .multilineTextAlignment(.center)

            }
            else if (name != "" && cosplay != "鄭晉守"){
                HStack{
                    Text(name)
                        .font(.custom("HanyiSentySuciTablet", size: 70))
                        .bold()
                    Text("將會在").font(.custom("HanyiSentySuciTablet", size: 70))
                }

            }
            else if (cosplay == "鄭晉守"){
                HStack{
                    Text("將會在").font(.custom("HanyiSentySuciTablet", size: 70))
                    Text("二十年後的１０：３０死亡\n並前往地獄\n這你不能決定").font(.custom("HanyiSentySuciTablet", size: 40))
                    
                }

                
            }
            if (name != "" && cosplay != "鄭晉守") {
                HStack{
                    VStack{
                        Text(dateFormatter.string(from: diedate))
                            .font(.custom("HanyiSentySuciTablet", size: 40))
                            .bold()
                        Text(Formatter.string(from: diedate_time))
                            .font(.custom("HanyiSentySuciTablet", size: 40))
                            .bold()
                    }
                    Text("\n前往地獄 !").font(.custom("HanyiSentySuciTablet", size: 70))

                }

            }
            Spacer()

                if showUp {
                    ZStack {
                        
                        if (chance - number < -3 && name != "" ) {
                            Text("很可惜，審判的天使不這麼覺得")
                                .font(.custom("AvenirNextCondensed-UltraLightItalic", size: 27))
                        }
                        else if (chance+number > 3 && name != ""){
                            Text("審判的天使也跟你有同樣的想法")
                                .font(.custom("AvenirNextCondensed-UltraLightItalic", size: 27))
                        }
                        else if (chance - number >= -3 && chance + number <= 3 && name != ""  ){
                            Text("審判的天使覺得應該改期舉行")
                                .font(.custom("AvenirNextCondensed-UltraLightItalic", size: 27))
                        }
                        Image("天使")
                        .font(.system(size: 50))
                        .transition(.opacity)
                        .offset(y: 200)
                    
                }
                if showHeart {
                    Text("不可以壞壞！")
                    Image("不可以壞壞")
                        .font(.system(size: 50))
                        .transition(.opacity)
                        .offset(y: 200)
                }
            }
            .animation(.easeInOut(duration: 4))
            Spacer()
            HStack {
                Button(action: {self.showSheet = true}) {
                    Text("查看審判結果 ! ")
                        .font(.custom("HanyiSentySuciTablet", size: 30))

 
                }
                .actionSheet(isPresented: $showSheet) {
                    ActionSheet(title: Text("兩個按鈕選一個吧！"), message: Text("會影響結果！"), buttons: [.default(Text("正義"), action: {
                        self.showUp = true
                        self.showHeart = false
                    }), .default(Text("反叛"), action: {
                        self.showHeart = true
                        self.showUp = false
                    })])
                }
            }
            .padding()
        }
    .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color(red: red, green:green, blue: blue, opacity: 0.3)
        .edgesIgnoringSafeArea(.all))
    }
}

struct SecondPag_Previews: PreviewProvider {
    static var previews: some View {
        SecondPag(showSecondPage: .constant(true), isProfile: .constant(true), cosplay: .constant("審判者"), name: .constant(""), diedate: .constant(Date()), diedate_time: .constant(Date()),chance: .constant(0), red: .constant(0), green: .constant(0), blue: .constant(0))
    }
}
