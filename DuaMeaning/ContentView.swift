//
//  ContentView.swift
//  DuaMeaning
//
//  Created by Shain Dholakiya on 3/19/21.
//

import SwiftUI

var part: String = ""

struct ContentView: View {
    //    let duaData: [DuaDetails] = DuaProvider.all()
    let duaPart: [DuaPart] = [
        DuaPart(part: "First Part"),
        DuaPart(part: "Second Part"),
        DuaPart(part: "Third Part"),
        DuaPart(part: "Fourth Part"),
        DuaPart(part: "Fifth Part"),
        DuaPart(part: "Sixth Part"),
        DuaPart(part: "Random")
    ]
    @State private var showingDetail: Bool = false
    //    @State private var visibleDuaMeaningDetails: DuaDetails?
    @State private var visibleDuaMeaningDetails: DuaPart?
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 20) {
                HStack {
                    Button(action: {
                        visibleDuaMeaningDetails = DuaPart(part: "First Part")
                        part = "First Part"
                    }) {
                        VStack {
                            Image("number1").padding(.bottom, -12)
                            Text("First Part")
                        }
                    }
                    .padding(.trailing, 30)
                    Button(action: {
                        visibleDuaMeaningDetails = DuaPart(part: "Second Part")
                        part = "Second Part"
                    }) {
                        VStack {
                            Image("number2").padding(.bottom, -12)
                            Text("Second Part")
                        }
                    }
                }
                .padding()
                HStack {
                    Button(action: {
                        visibleDuaMeaningDetails = DuaPart(part: "Third Part")
                        part = "Third Part"
                    }) {
                        VStack {
                            Image("number3").padding(.bottom, -12)
                            Text("Third Part")
                        }
                    }
                    .padding(.trailing, 30)
                    Button(action: {
                        visibleDuaMeaningDetails = DuaPart(part: "Fourth Part")
                        part = "Fourth Part"
                    }) {
                        VStack {
                            Image("number4").padding(.bottom, -12)
                            Text("Fourth Part")
                        }
                    }
                }
                .padding()
                HStack {
                    Button(action: {
                        visibleDuaMeaningDetails = DuaPart(part: "Fifth Part")
                        part = "Fifth Part"
                    }) {
                        VStack {
                            Image("number5").padding(.bottom, -12)
                            Text("Fifth Part")
                        }
                    }
                    .padding(.trailing, 30)
                    Button(action: {
                        visibleDuaMeaningDetails = DuaPart(part: "Sixth Part")
                        part = "Sixth Part"
                    }) {
                        VStack {
                            Image("number6").padding(.bottom, -12)
                            Text("Sixth Part")
                        }
                    }
                }
                .padding()
                Button(action: {
                    visibleDuaMeaningDetails = DuaPart(part: "Random")
                    part = "Random"
                }) {
                    VStack {
                        Image("random").padding(.bottom, -12)
                        Text("Random")
                    }
                }
            }
//            List {
//                ForEach(duaPart) { duaDetails in
//                    Button(action: {
//                        visibleDuaMeaningDetails = duaDetails
//                        part = duaDetails.part
//                    }, label: {
//                        DuaMeaningItemView(part: duaDetails.part)
//                    })
//                }
//
//            }
            .foregroundColor(.black)
//            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Dua Meaning 🙏🏽")
        }
        
        
        //        .onOpenURL { url in
        //            guard let emojiDetails = duaData.first(where: { $0.url == url }) else { return }
        //            visibleDuaMeaningDetails = emojiDetails
        //        }
        .sheet(item: $visibleDuaMeaningDetails, content: { duaDetails in
            DuaMeaningDetailsView()
        })
    }
    
}

//struct DuaMeaningItemView: View {
//    let part: String
//
//    var body: some View {
//        Text("\(part)")
//            .padding([.top, .bottom])
//    }
//}

struct DuaMeaningDetailsView: View {
    @State private var dua: DuaDetails = DuaProvider.getWhichPart(duaPart: DuaPart(part: part))
    @State private var correctAnswer: Int = 0
    @State private var choiceRandomInt: Int = Int.random(in: 0...1)
    @State private var choiceRandomDuaMeaning: String = DuaProvider.getRandomDuaMeaning()
 
    func getDua() {
        dua = DuaProvider.getWhichPart(duaPart: DuaPart(part: part))
    }
    
    func resetCorrectAnswer() {
        correctAnswer = 0
    }
    
    func randomInt() {
        choiceRandomInt = Int.random(in: 0...1)
    }
    
    func randomDuaMeaning() {
        while (choiceRandomDuaMeaning == dua.meaning) {
            choiceRandomDuaMeaning = DuaProvider.getRandomDuaMeaning()
        }
        choiceRandomDuaMeaning = DuaProvider.getRandomDuaMeaning()
    }
    
    
    var body: some View {
        ZStack {
            // Background color
            Color(UIColor.systemGreen).edgesIgnoringSafeArea(.all)
            // Dua Meaning data
            VStack(alignment: .center) {
                Text(dua.part)
                    .padding(.bottom)
                Text("\(dua.arabic)")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                if (choiceRandomInt == 0) {
                    Button("\(dua.meaning)") {
                        correctAnswer = 1
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
                    Button("\(choiceRandomDuaMeaning)") {
                        correctAnswer = 2
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
                } else {
                    Button("\(choiceRandomDuaMeaning)") {
                        correctAnswer = 2
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
                    Button("\(dua.meaning)") {
                        correctAnswer = 1
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
                }
                Group {
                    if (correctAnswer == 1) {
                        Text("Correct!")
                    } else if (correctAnswer == 2) {
                        Text("Incorrect!")
                    }
                }
                .padding(.bottom)
                Button("Next") {
                    getDua()
                    resetCorrectAnswer()
                    randomInt()
                    randomDuaMeaning()
                }
                .foregroundColor(.white)
                .padding(8)
                .font(.system(size: 15))
                .background(Color.red)
                .cornerRadius(6)
            }
            .padding([.leading, .trailing])
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
