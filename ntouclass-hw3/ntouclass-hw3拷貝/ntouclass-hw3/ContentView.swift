//
//  ContentView.swift
//  ntouclass-hw3
//
//  Created by timchen on 2021/11/29.
//

import SwiftUI

struct ContentView: View {
    @State private var showSecondPage = false
    @State private var isProfile = false
    @State private var isName: Bool = false
    @State private var cosplay = "審判者"
    let cos = ["審判者", "反抗者","新真理教","鄭晉守","箭鏃"]
    @State private var name = ""
    @State private var diedate = Date()
    @State private var diedate_time = Date()
    @State private var chance = 0
    @State private var red: Double = 0
    @State private var green: Double = 0
    @State private var blue: Double = 0
    @State private var showAlert = false
    @FocusState private var nameIsFocused : Bool
    let messege = ["\n","將於\n","前往地獄"]
    var body: some View {
        VStack {
            if isProfile {
                Image(cosplay)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
            }
            else {
                Image("旁觀者")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipped()
            }
            Form {
                Toggle("審判對象不是旁觀者？", isOn: $isProfile).font(.custom("HanyiSentySuciTablet", size: 30))
                if isProfile {
                    VStack(alignment: .leading) {
                        Picker("Gender", selection: $cosplay) {
                            ForEach(cos, id: \.self) { (cos) in
                                Text(cos)
                            }
                        }
                    .pickerStyle(SegmentedPickerStyle())
                    }
                }
                HStack{
                    Text("> 輸入你覺得應該被審判的人").font(.custom("HanyiSentySuciTablet", size: 30))
                    Spacer()
                    Toggle("Input Name", isOn: $isName)
                        .labelsHidden()
                        .onChange(of: isName, perform: { value in
                            if !value{
                                name = ""
                            }
                        })
                }
                if isName{
                    TextField("name", text: $name)
                        .padding(5)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 5))
                        .focused($nameIsFocused)
                    .font(.custom("HanyiSentySuciTablet", size: 30))
                    Button("送出"){
                        nameIsFocused = false
                    }
                    
                }
                DisclosureGroup("何時受審判？"){
                    DatePicker("choose a date", selection: $diedate, in: Date()..., displayedComponents: .date).font(.custom("HanyiSentySuciTablet", size: 30))
                    DatePicker("time", selection: $diedate_time, in: Date()..., displayedComponents: .hourAndMinute).font(.custom("HanyiSentySuciTablet", size: 30))
                    
                }.font(.custom("HanyiSentySuciTablet", size: 30))
                Stepper(value: $chance, in: -10...10) {
                    if chance < -3 {
                        Text("審判成功率：低").font(.custom("HanyiSentySuciTablet", size: 30))                    }
                    else if chance > 3 {
                        Text("審判成功率：高").font(.custom("HanyiSentySuciTablet", size: 30))                    }
                    else {
                        Text("審判成功率：普通").font(.custom("HanyiSentySuciTablet", size: 30))                    }
                }
                chooseColor(red: $red, green: $green, blue: $blue)
            }
            Text("選擇背景顏色")
                .font(.custom("HanyiSentySuciTablet", size: 40))
                .fontWeight(.bold)
                .frame(width: 200, height: 80)
                .background(Color(red: red, green: green, blue: blue, opacity: 0.3))
            Spacer()
            Button(action: {self.showSecondPage = true}) {
                Text("查看審判")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 5))
            }
            .sheet(isPresented: self.$showSecondPage) {
                SecondPag(
                    showSecondPage:self.$showSecondPage,
                    isProfile: self.$isProfile,
                    cosplay: self.$cosplay,
                    name:self.$name,
                    diedate:self.$diedate,
                    diedate_time:self.$diedate_time,
                    chance: self.$chance,
                    red: self.$red,
                    green: self.$green,
                    blue: self.$blue)
            }
        }
    .background(Image("back")
    .resizable()
    .scaledToFill()
    .opacity(0.8)
    .edgesIgnoringSafeArea(.all)
    )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

struct chooseColor: View {
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    var body: some View {
        VStack {
            HStack {
                Text("Red")
                    .foregroundColor(Color.red)
                Slider(value: $red, in: 0...1)
                    .accentColor(.red)
            }
            HStack {
                Text("Green")
                    .foregroundColor(Color.green)
                Slider(value: $green, in: 0...1)
                    .accentColor(.green)
            }
            HStack {
                Text("Blue")
                    .foregroundColor(Color.blue)
                Slider(value: $blue, in: 0...1)
                    .accentColor(.blue)
            }
        }
    }
}


